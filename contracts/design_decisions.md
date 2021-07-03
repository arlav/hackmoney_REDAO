

The NFT contract gets fed with Chain.link data and geometrical information, then mints and NFTsrepresenting the property.
The NFT contract should have a registry funcion, or a hook with "TheGraph" that provides an index of all NFTs locked in tthe contract.



The NFT is then send into a contract address, to the contract that provides liquidity against the NFT, by wrapping the ERC721 and minting ERC20 against the value of the ERC721.

We can then create a wrapped version of the NFT, which means that the NFT is locked in the liquidity conttract, and a number of ERC20 tokens are minted against its value. we can use Chain.link to coordinae the value of the NFT with the valueof tokens that are minted, by using an API that inserts the price valuation in the NFT, or attacha price valuation from a surveyor.


first target is to create a clone of the wrapped NFTs, where the wrapping comes as 1:1, and second upgrade to be able to mint a number off ERC20 tokens according to chain.link price data for the NFT-, Here a number of stablecoins could be used in a further development.

However we need to describe what is the difference with a staking NFT mechanism.

re-design this with Chain.link to NFT staking.
