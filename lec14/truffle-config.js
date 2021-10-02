const path = require("path");

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  contracts_build_directory: path.join(__dirname, "client/src/contracts"),
  networks: {
    development:{
      port:8545,
      host: "127.0.0.1",
      network_id:1337,
      gasPrice: 0x01,
     
    },
    


  },

  compilers: {
    solc:{
      version:"^0.8.0",
      optimizer: { enabled: true, runs: 200 }
    }
  }


};