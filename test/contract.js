const Storage = artifacts.require("Storage") ;
  
contract("Storage" , () => {
    it("Storage Testing" , async () => {
       const storage = await Storage.deployed() ;
       await storage.setName("User Name") ;
       const result = await storage.yourName() ;
       assert(result === "User Name") ;
    });
});