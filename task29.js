let a = [{name:"john",age:20},{name:"james",age:28},{name:"joseph",age:30},{name:"johnny",age:22}];
let b = a.map(n => ({name:n.name,age:n.age * 2}))
let fifty = b.filter(n => n.age > 50);
let names =  fifty.map(n => n.name);
console.log(" Users whose age is Above 50: "+names);
