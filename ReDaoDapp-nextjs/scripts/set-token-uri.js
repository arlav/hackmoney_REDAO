const RealEstate = artifacts.require('RealEstateProperty')
const TOKENID = 0
module.exports = async callback => {
    const re = await RealEstate.deployed()
    console.log('Let\'s set the tokenURI of your properties')
    const tx = await re.setTokenURI(0, "https://ipfs.io/ipfs/Qmbar4ydc8YR1CF8QQmR2XiXdYxT3X9dcncqBkX5VHNxKH")
    const tx1 = await re.setTokenURI(1, "https://ipfs.io/ipfs/QmPigmJHmHs1QfKbvk1drsNCjyfZf3hbMLjMwH9JLr7aLL")
    const tx2 = await re.setTokenURI(2, "https://ipfs.io/ipfs/QmcRg7hvdxD5UQFsncz2conCmcfeiJWeCCEWpvxM4rzNG1")
    console.log(tx)
    callback(tx.tx)
}
