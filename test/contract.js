const Storage = artifacts.require("Storage") ;
  
contract("Storage" , () => {
    it("Storage Testing" , async () => {
       const storage = await Storage.deployed() ;
       await storage.addFood(1, "Food", "Korean") ;
       await storage.addFood(1, "Food2", "Korean") ;
       await storage.addFood(2, "Food3", "Korean") ;
       const result = await storage.getFood(1) ;
       console.log(result);
       console.log([result[1].name]);
    });
});