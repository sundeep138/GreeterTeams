const GreeterContract =artifacts.require("Greeter");
contract("Greeter",() => {
it("has been deployed successfully", async function(){
const greeter = await GreeterContract.deployed();
assert(greeter, "contract was not deployed");

});
})
/*
describe("greet()", () => {  it("returns 'Good Evening'", async () => {    
const greeter = await GreeterContract.deployed();   
const expected = "Good Evening";    
const actual = await greeter.greet();
assert.equal(actual, expected, "greeted with 'Good Evening'"); 

});

}
)*/