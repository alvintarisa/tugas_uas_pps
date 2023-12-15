// // Literal Object
// let orang = {
//     id: 1,
//     name: 'Adi',
//     energy: 1,
//     eat: function (portion) {
//         this.energy = this.energy + portion;
//         console.log(`${this.name} eats ${portion} portion and regain ${portion} energy`);
//     }
// }
// let orang2 = {
//     id: 1,
//     name: 'Del',
//     energy: 1,
//     eat: function (portion) {
//         this.energy = this.energy + portion;
//         console.log(`${this.name} eats ${portion} portion and regain ${portion} energy`);
//     }
// }

// // Function Declaration
// function Orang(id, name, energy) {
//     let orang = {};
//     orang.id = id;
//     orang.name = name;
//     orang.energy = energy;

//     orang.eat = function (portion) {
//         this.energy = this.energy + portion;
//         console.log(`${this.name} eats ${portion} portion and regain ${portion} energy`);
//     }
//     orang.study = function (hour) {
//         this.energy = this.energy - 2*hour;
//         console.log(`${this.name} study for ${hour} hour and used their ${2*hour} energy`);
//     }

//     return orang;
// }

// let Adi = Orang(1, "Adi", 1);
// let Del = Orang(2, "Del", 5);

// // Construct Function

function Orang(k, name, energy) {
    this.orang = {}
    this.orang.id = k;
    this.orang.name = name;
    this.orang.energy = energy;

    this.orang.eat = function (portion) {
        this.energy = this.energy + portion;
        console.log(`${this.name} eats ${portion} portion and regain ${portion} energy`);
    }
    this.orang.study = function (hour) {
        this.energy = this.energy - 2*hour;
        console.log(`${this.name} study for ${hour} hour and used their ${2*hour} energy`);
    }
}

let Adi = new Orang(1, 'Adi', 1);
let Del = new Orang(2, 'Del', 5);

// // Object Create (Object.create)