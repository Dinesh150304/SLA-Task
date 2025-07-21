let products = [{name:"Laptop",price:900},{name:"Mouse",price:25},{name:"Monitor",price:300}];
function filterProductNamesByPrice(a)
{
    return products
    .filter(product => product.price > a)
    .map(product => product.name)
}
console.log(filterProductNamesByPrice(20));
