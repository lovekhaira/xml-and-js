const data = [
    { born: 1870, died: 1924 },
    { born: 1893, died: 1976 },
    { born: 1869, died: 1948 },
    { born: 1901, died: 1989 },
    ];
// calculating age for each entry
const age = data.map((people) => {
    return people.died - people.born;
})
console.log(age);

// Filter age
const filtered = age.filter((age) => {
    return age > 75;
})
console.log(filtered);

//calculating the highest age
const oldest = age.reduce((acc, age) => {
    return acc > age ? acc : age;
})
console.log(oldest);

const highestAge = data
    .map((people) => people.died - people.born)
    .filter((age) => age > 75)
    .reduce((acc,age) => acc > age? acc : age);
console.log(highestAge);