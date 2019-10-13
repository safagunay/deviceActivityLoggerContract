module.exports = {
  networks: {
    development: {
      host: "40.114.250.140",
      port: 8545,
      network_id: "*" // Match any network id
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}