const express = require('express');
const bodyParser = require('body-parser');
const koneksi = require('./config/database');
const aplikasi = express();
const http = require('http');
const ejs = require('ejs');
var fs = require('fs');
const path = require('path');
const PORT = process.env.PORT || 2500;
const user_id = 1;

// const fs = require('node:fs/promises');

aplikasi.use(bodyParser.json());
aplikasi.use(bodyParser.urlencoded({ extended: false }));
aplikasi.use('/public', express.static(path.join(__dirname, 'public')));
aplikasi.set('view engine', 'ejs');
aplikasi.engine('ejs', require('ejs').__express);

aplikasi.get('/login', (req, res) => {
    console.log("Get!");
    const queryG = 'SELECT * FROM paket_soal';
    koneksi.query(queryG, (err, rows, field) => {
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (paket-soal)", error: err});
        }
        // res.writeHead(200, {'Content-Type': 'text/html'});
        // return res.render('index.ejs');
        console.log(req.params.userQuery);
        res.render("index.ejs", {data: {userQuery: "Login", imgUrl: "/media/img/login_img.jpg"}});
    });
    // res.render("index.html", {data: {userQuery: req.params.userQuery}});
});

aplikasi.get('/', (req, res) => {
    koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
        
        res.render("halaman-utama.ejs", {data: {halaman_utama: true, notifikasi: results_notifikasi}});
    });
});
aplikasi.get('/paket-soal', (req, res) => {
    console.log("Get paket soal!");
    koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
        
        res.render("daftar-paket-soal.ejs", {data: {paket_soal: true, notifikasi: results_notifikasi}});
    });
});

aplikasi.post('/paket-soal', (req, res) => {
    console.log("Post Paket Soal: ", req.body);

    var bab_soal = req.body.paket_soal;

    delete req.body.paket_soal;

    const data_paket_soal = { ...req.body };

    // Persentase kesulitan soal
    var banyak_mudah = Math.floor((req.body.banyak_soal)*0.5);
    var banyak_sedang = Math.floor((req.body.banyak_soal)*0.3);
    var banyak_sulit = Math.floor((req.body.banyak_soal)*0.2);
    var jumlah_soal = banyak_mudah+banyak_sedang+banyak_sulit;
    if (jumlah_soal != req.body.banyak_soal) {
        banyak_mudah+=1;
        jumlah_soal+=1;
    }

    var list_mudah = [];
    var list_sedang = [];
    var list_sulit = [];
    var list_kumpulan_soal = [];

    const query_insert_paket_soal = 'INSERT INTO paket_soal SET ?';
    var id_paket_soal = 0;
    koneksi.query(query_insert_paket_soal, data_paket_soal, (err, results, field) => {
        if (err) {
            return res.status(500).json({message: "Gagal memasukkan data (paket-soal)", error: err});
        }
        id_paket_soal = results.insertId;
        console.log(id_paket_soal);
        console.log("Berhasil memasukkan data (paket-soal)");


        
        var query_select_soal = 'Select id, kesulitan FROM soal ';
        bab_soal.forEach((element, index) => {
            if (index!=0) {   
                query_select_soal+=" OR id_bab_materi = ?";
            } else {
                query_select_soal+=" WHERE id_bab_materi = ?";
            }
        });
        console.log(query_select_soal);
        
        koneksi.query(query_select_soal, bab_soal, (err, results, field) => {
            if (err) {
                return res.status(500).json({message: "Gagal memasukkan data (paket-soal)", error: err});
            }
            // id_paket_soal = results.insertId;
            // console.log(id_paket_soal);
            // console.log("Berhasil memasukkan data (paket-soal)");
            // res.status(200).json({success:true, message: "Berhasil memasukkan data (paket-soal)"});
            console.log(results);
            
            results.forEach((element, index) => {
                if (element.kesulitan == 1) {   
                    list_mudah.push(element);
                } else if (element.kesulitan == 2) {
                    list_sedang.push(element);
                } else if (element.kesulitan == 3){
                    list_sulit.push(element)
                }
            });
            
            let mudah = 0;
            let sedang = 0;
            let sulit = 0;
            let id = 0;
            while (list_kumpulan_soal.length < jumlah_soal) {
                if (banyak_mudah != mudah) {
                    id = Math.floor(Math.random() * list_mudah.length);
                    list_kumpulan_soal.push({id_paket_soal: id_paket_soal, id_soal: list_mudah[id].id});
                    list_mudah.splice(id, 1);
                    mudah+=1;
                }else if (banyak_sedang != sedang){
                    id = Math.floor(Math.random() * list_sedang.length);
                    list_kumpulan_soal.push({id_paket_soal: id_paket_soal, id_soal: list_sedang[id].id});
                    list_sedang.splice(id, 1);
                    sedang+=1;
                }else if (banyak_sulit != sulit){
                    id = Math.floor(Math.random() * list_sulit.length);
                    list_kumpulan_soal.push({id_paket_soal:id_paket_soal, id_soal:list_sulit[id].id});
                    list_sulit.splice(id, 1);
                    sulit+=1;
                }
            }
            list_kumpulan_soal.forEach(element => {
                var query_insert_kumpulan_soal = 'INSERT INTO kumpul_soal SET ?';
                koneksi.query(query_insert_kumpulan_soal, element ,(err, results, fields) => {
                if (err) {
                    return res.status(500).json({message: "Gagal mengambil data (paket-soal)", error: err});
                }
                });
            });
            
            koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil menambah paket soal"}, (err, results, fields) => {
                if (err) throw err;

                console.log("Berhasil input notifikasi");
            });
            // console.log(query.sql);

            res.redirect('/paket-soal');
        });
    });
});

aplikasi.get('/paket-soal-read', (req, res) => {
    console.log("Get Paket Soal!");
    const queryG = 'SELECT P.id, P.nama, P.banyak_soal, P.id_mata_kuliah, M.nama AS nama_mata_kuliah, P.waktu_pengerjaan FROM paket_soal AS P LEFT JOIN mata_kuliah AS M ON P.id_mata_kuliah = M.id';

    var query = koneksi.query(queryG, (err, results, field) => {
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (paket-soal)", error: err});
        }
        res.status(200).json({success: true, data: results});
    });
    console.log(query.sql);

});


aplikasi.get('/buat-paket-soal', (req, res) => {
    const queryGetMatakuliah = 'Select * FROM mata_kuliah';

    koneksi.query(queryGetMatakuliah, (err, results, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
            
            res.render("buat-paket-soal.ejs", {data: {paket_soal: true, banyakOpsi: 3, tingkat_kesulitan: {kesulitan: 1, kesulitan: 2, kesulitan: 3}, mata_kuliah: results, notifikasi: results_notifikasi}});
        });
    });
});


aplikasi.get('/paket-soal-detail/:id', (req, res) => {
    console.log("Get detail paket soal");
    const query_paket_soal = 'SELECT P.id, P.nama, P.banyak_soal, P.id_mata_kuliah, M.nama AS nama_mata_kuliah, P.waktu_pengerjaan FROM paket_soal AS P LEFT JOIN mata_kuliah AS M ON P.id_mata_kuliah = M.id WHERE P.id = '+req.params.id;

    koneksi.query(query_paket_soal, (err, results, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
            
            res.render("detail_paket_soal.ejs", {data: {paket_soal: true, detail_paket_soal: results[0], id_paket_soal: req.params.id, notifikasi: results_notifikasi}});
        });
    });

});

aplikasi.get('/paket-detail/:id_paket_soal', (req, res) => {
    console.log("Get Paket Detail!");
    const queryG = 'SELECT P.id, P.nama, P.banyak_soal, P.id_mata_kuliah, M.nama AS nama_mata_kuliah, P.waktu_pengerjaan, S.soal, S.kesulitan, S.id_bab_materi, S.pilihan_1, S.pilihan_2, S.pilihan_3, S.pilihan_4 FROM paket_soal AS P LEFT JOIN kumpul_soal AS K ON P.id = K.id_paket_soal LEFT JOIN soal AS S ON K.id_soal = S.id LEFT JOIN mata_kuliah AS M ON P.id_mata_kuliah = M.id WHERE K.id_paket_soal = ?';
    // console.log(var_dump(req.params.id_paket_soal));
    var query = koneksi.query(queryG, req.params.id_paket_soal,(err, results, field) => {
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (paket-soal)", error: err});
        }
        res.status(200).json({success: true, data: results});
        console.log(results);
    });
    console.log(query.sql);

});

aplikasi.post('/edit-paket-soal-post', (req, res) => {
    const data = [];
    const currentDate = new Date();
    const timestamp = currentDate.getFullYear()+"-"+currentDate.getMonth()+"-"+currentDate.getDate()+" "+currentDate.getHours()+":"+currentDate.getMinutes()+":"+currentDate.getSeconds();
    console.log(timestamp);
    data.push({waktu_pengerjaan: req.body.waktu_pengerjaan, updated_at: timestamp});
    // const data = {...req.body};
    delete req.body.waktu_pengerjaan;
    console.log("Insert soal:", req.body.id_paket_soal);
    // console.log("Insert soal:", req);
    queryPaketSoal = 'UPDATE paket_soal SET ? WHERE id = '+req.body.id_paket_soal;
    // queryJawaban = 'UPDATE jawaban_soal SET `jawaban` = ? WHERE id_soal = ?';
    // queryPaketSoal = 'INSERT INTO soal SET ?';


    koneksi.query(queryPaketSoal, data, (err, results, fields) =>{
        if (err) {
            throw err;
            // return res.status(500).json({message: "Gagal memasukkan data soal", error: err});
        }
        // res.status(201).json({success: true, message:'Berhasil memasukkan data'});
        console.log("Berhasil update soal");
        koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil update paket soal"}, (err, results, fields) => {
            if (err) throw err;

            console.log("Berhasil input notifikasi");
        });
        res.redirect('/paket-soal');
    });

});

// e-JS

// Kumpulan tentang soal 

aplikasi.get('/soal', (req, res)=>{
    // console.log('Get Soal!');
    const queryGetMatakuliah = 'Select * FROM soal';

    koneksi.query(queryGetMatakuliah, (err, rows, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
            
            res.render("daftar-soal.ejs", {data: {soal: true, banyakOpsi: 3, tingkat_kesulitan: {kesulitan: 1, kesulitan: 2, kesulitan: 3}, mata_kuliah: rows, notifikasi: results_notifikasi}});
        });
        // res.status(200).json({success:true, data:rows});
        // console.log(req.params.userQuery);
        // console.log(rows);
        // console.log(rows.nama);
        
    });
});

aplikasi.get('/soal-read', (req, res)=>{
    console.log('Get Soal!');
    const queryGetSoal = 'Select * FROM soal';

    koneksi.query(queryGetSoal, (err, results, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        res.status(200).json({soal_soal:results});
    });
});

aplikasi.post('/soal-count', (req, res)=>{
    console.log('Get total Soal!');
    var data = {...req.body};
    data = JSON.parse(Object.keys(data));
    var queryGetSoal = 'Select COUNT(*) AS banyak_soal FROM soal';
    data.forEach((element, index) => {
        if (index!=0) {   
            queryGetSoal+=" OR ?";
        } else {
            queryGetSoal+=" WHERE ?";
        }
    });

    koneksi.query(queryGetSoal, data,(err, results, field) =>{
        if (err) {
            console.log("Gagal mengambil data (soal) :"+err);
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        console.log(results);
        res.status(200).json({success:true, banyak_soal:results});
    });
});

aplikasi.get('/buat-soal', (req, res)=>{
    const queryGetMatakuliah = 'Select * FROM mata_kuliah';

    koneksi.query(queryGetMatakuliah, (err, rows, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        
        koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
            
            res.render("buat-soal.ejs", {data: {soal: true, userQuery: "Test", imgUrl: "/media/img/login_img.jpg", banyakOpsi: 3, tingkat_kesulitan: {kesulitan: 1, kesulitan: 2, kesulitan: 3}, mata_kuliah: rows, notifikasi: results_notifikasi}});
        });
    });
});

aplikasi.post('/buat-soal-post', (req, res) => {
    const data_soal = [];
    const data_jawaban = [];
    data_soal.push({soal: req.body.soal, pilihan_1: req.body.isi_pilihan_1, pilihan_2: req.body.isi_pilihan_2, pilihan_3: req.body.isi_pilihan_3, pilihan_4: req.body.isi_pilihan_4, kesulitan:req.body.kesulitan, id_mata_kuliah: req.body.id_mata_kuliah, id_bab_materi: req.body.id_bab_materi});
    // const data = {...req.body};
    console.log("Insert soal:", data_soal);
    // console.log("Insert soal:", req);
    querySoal = 'INSERT INTO soal SET ? ';
    queryJawaban = 'INSERT INTO jawaban_soal SET ?';
    // querySoal = 'INSERT INTO soal SET ?';

    try {
        koneksi.query(querySoal, data_soal, (err, results, fields) =>{
            if (err) {
                throw err;
                // return res.status(500).json({message: "Gagal memasukkan data soal", error: err});
            }
    
            koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil menambah soal"}, (err, results, fields) => {
                if (err) throw err;
    
                console.log("Berhasil input notifikasi");
            });
            // res.status(201).json({success: true, message:'Berhasil memasukkan data'});
            console.log("Berhasil menambah soal");
            data_jawaban.push({id_soal: results.insertId, jawaban: req.body.jawaban});
            console.log({id_soal: results.insertId, jawaban: req.body.jawaban});
            koneksi.query(queryJawaban, data_jawaban, (err, results, fields) => {
                if (err) throw err;
                
                console.log("Berhasil update jawaban");
                koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil menambah jawaban"}, (err, results, fields) => {
                    if (err) throw err;
        
                    console.log("Berhasil input notifikasi");
                });
            });
            res.redirect('/soal');
        });
      }
      catch(err) {
        return res.status(500).json({message: "Gagal memasukkan data (soal)", error: err});
      }

});

aplikasi.get('/edit-soal/:id', (req, res)=>{
    const query_paket_soal = 'SELECT S.id, S.soal, S.pilihan_1, S.pilihan_2, S.pilihan_3, S.pilihan_4, S.id_mata_kuliah, S.id_bab_materi, S.kesulitan, J.jawaban FROM soal AS S LEFT JOIN jawaban_soal AS J ON S.id = J.id_soal WHERE S.id = '+req.params.id;
    koneksi.query(query_paket_soal, (err, results_view, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
            
            res.render("edit-soal.ejs", {data: {soal: true, banyakOpsi: 3, soal: results_view[0], notifikasi: results_notifikasi, id: req.params.id}});
        });
    });
});

aplikasi.post('/edit-soal-post', (req, res) => {
    const data_soal = [];
    const data_jawaban = [];
    const currentDate = new Date();
    const timestamp = currentDate.getFullYear()+"-"+currentDate.getMonth()+"-"+currentDate.getDate()+" "+currentDate.getHours()+":"+currentDate.getMinutes()+":"+currentDate.getSeconds();
    console.log(timestamp);
    data_soal.push({soal: req.body.soal, pilihan_1: req.body.isi_pilihan_1, pilihan_2: req.body.isi_pilihan_2, pilihan_3: req.body.isi_pilihan_3, pilihan_4: req.body.isi_pilihan_4, kesulitan:req.body.kesulitan, id_mata_kuliah: req.body.id_mata_kuliah, id_bab_materi: req.body.id_bab_materi, updated_at: timestamp});
    // const data = {...req.body};
    console.log("Insert soal:", req.body);
    // console.log("Insert soal:", req);
    querySoal = 'UPDATE soal SET ? WHERE id = '+req.body.id;
    queryJawaban = 'UPDATE jawaban_soal SET `jawaban` = ? WHERE id_soal = ?';
    // querySoal = 'INSERT INTO soal SET ?';


    koneksi.query(querySoal, data_soal, (err, results, fields) =>{
        if (err) {
            throw err;
            // return res.status(500).json({message: "Gagal memasukkan data soal", error: err});
        }
        // res.status(201).json({success: true, message:'Berhasil memasukkan data'});
        console.log("Berhasil update soal");
        data_jawaban.push(req.body.jawaban);
        console.log("JAwaban", data_jawaban);
        koneksi.query(queryJawaban, [data_jawaban, req.body.id], (err, results, fields) => {
            if (err) throw err;

            console.log("Berhasil update jawaban");
        });
        koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil update soal"}, (err, results, fields) => {
            if (err) throw err;

            console.log("Berhasil input notifikasi");
        });
        res.redirect('/soal');
    });

});

aplikasi.get('/delete-soal-post/:id', (req, res)=>{
    console.log('Delete Soal!');
    // const querySoal = 'DELETE FROM soal WHERE id = ?';
    // const queryJawaban = 'DELETE FROM soal WHERE id_soal = ?';
    console.log(req.params.id);

    try {
        koneksi.query('DELETE FROM jawaban_soal WHERE id_soal = ?', req.params.id, (err, rows, field) =>{
            if (err) {
                return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
            }
            console.log("Berhasil hapus jawaban");
            koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil menghapus jawaban"}, (err, results, fields) => {
                if (err) throw err;
    
                console.log("Berhasil input notifikasi");
            });

            koneksi.query('DELETE FROM soal WHERE id = ?', req.params.id, (err, rows, field) =>{
                if (err) {
                    return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
                }
                console.log("Berhasil hapus soal");
                koneksi.query("INSERT INTO notifikasi SET ?", {id_user: 1, pesan: "Telah berhasil menghapus soal"}, (err, results, fields) => {
                    if (err) throw err;
        
                    console.log("Berhasil input notifikasi");
                });       
            });      
        });
        res.redirect('/soal');
        
      }
      catch(err) {
        return res.status(500).json({message: "Gagal menghapus data (soal)", error: err});
      }
});

aplikasi.get('/mata-kuliah-read', (req, res)=>{
    console.log('Get Bab Soal!');
    const queryGetSoal = 'Select * FROM mata_kuliah';

    koneksi.query(queryGetSoal, (err, rows, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        console.log(rows);
        console.log("Ambil mata kuliah");
        res.status(200).json({success:true, data:rows});
    });
});

aplikasi.get('/bab-materi-read', (req, res)=>{
    console.log('Get Bab Soal!');
    const queryGetSoal = 'Select * FROM bab_materi';

    koneksi.query(queryGetSoal, (err, rows, field) =>{
        if (err) {
            return res.status(500).json({message: "Gagal mengambil data (soal)", error: err});
        }
        console.log(rows);
        console.log("Ambil paket soal");
        res.status(200).json({success:true, data:rows});
    });
});

aplikasi.get('/testing-view', (req, res)=>{
    koneksi.query("SELECT pesan, terbaca FROM notifikasi WHERE id_user = "+user_id+" AND terbaca = 0", (err, results_notifikasi, fields) => {
        
        res.render("halaman-utama.ejs", {data: {halaman_utama: true, notifikasi: results_notifikasi}});
    });
});


aplikasi.listen(PORT, () => console.log(`Server dijalankan pada port: ${PORT}`));