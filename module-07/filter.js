const pilots = [
  {
    id: 2,
    name: "Wedge Antilles",
    faction: "Rebels",
  },
  {
    id: 8,
    name: "Ciena Ree",
    faction: "Empire",
  },
  {
    id: 40,
    name: "Iden Versio",
    faction: "Empire",
  },
  {
    id: 66,
    name: "Thane Kyrell",
    faction: "Rebels",
  },
];

console.log(`Source:`);
console.log(pilots);

const empire = pilots.filter((pilot) => pilot.faction === "Empire")
.map((name) => pilot.faction === "name");

console.log(empire);

console.log(`Source:`);
console.log(pilots);

const Rebels = pilots.filter((pilot) => pilot.faction === "Rebels");

console.log(Rebels);
