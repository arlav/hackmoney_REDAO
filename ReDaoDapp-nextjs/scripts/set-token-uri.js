const RealEstate = artifacts.require('RealEstateProperty')
const TOKENID = 0
module.exports = async callback => {
    const re = await RealEstate.deployed()
    console.log('Let\'s set the tokenURI of your properties')
    const tx = await re.setTokenURI(0, "https://ipfs.io/ipfs/QmaSED9ZSbdGts5UZqueFJjrJ4oHH3GnmGJdSDrkzpYqRS?filename=property1.json")
    const tx1 = await re.setTokenURI(1, "https://ipfs.io/ipfs/QmTvsVaaHTuMNmwXgbfgkrztFEazAPyzmrb4VSS2PbqLjA?filename=property2.json")
    const tx2 = await re.setTokenURI(2, "https://ipfs.io/ipfs/QmPZQhiBB6pwcxRgwZe2mx6ZizCPYgq8i4FBMETyWK1V2z?filename=property3.json")
    console.log(tx)
    callback(tx.tx)
}
