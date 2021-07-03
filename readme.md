basic setup for the hackathon.


First version:
contribute an NFT representing a property as a stake,
receive a number of ERC20  tokens as a 100/100 fraction of the NFT

NFTs represent the value of the Real Estate - but it's not liquid. We may be able to use these NFTs to get DeFi based loans. We also then need to use revenues from Real Estate, by converting them to Stablecoins (ERC20, Fiat Backed) to pay the Loan Fees and Interest payments.

This sounds interesting which can work. Howw much do we care about whom certifies the real world NFT with a Chainlink data call? I dont think we have to worry that much for the prototype because I'm seeing some new projects which leverages the expertise of individuals such as real estate agents. We could also use virtual land NFT's whih should be much easier verifying than real world property. Then possibly just focus on bringing in different real world property financial mechanisms into the virtual real estate such as you mentioned with borrowing and lending, maybe even go create a mortgage feature or something that is real estate specific.

I'll also start researching into this idea specifically.

Second version:
realestateDAO full functionality? - more questions than answers-
ERC20 tokens on the open market-
Can we set ERC721 tokens as collateral in other DeFi products?

![Diagram Ideas](https://github.com/arlav/hackmoney_REDAO/blob/main/real_estate_dao_rev-0.3.0.png?raw=true)
diagrams:
https://drive.google.com/file/d/1O82zE_5iNwcE7hR-j5xsSAnxCni-Qw7E/view?usp=sharing



ToDo:
update, run and understand the stakenft contract- simpliffy it for 0.8.0 compilers.
create / update the 721 real_estate contract to work with information from chain.link- or provide link to 'IPFS for that'
build a simple front end, that allows to stake the NFTs and receive our governance token, then lock and unlock the nfts with erc20 token.
write the contracts for erc20.


weekend.create an ERC20 contract that also takes a stake from an NFT. use a mapping to record the NFT- wiht a stake id, and stake size
https://medium.com/hackernoon/implementing-staking-in-solidity-1687302a82cf
clean up notes




Links:

Staking:
https://forum.openzeppelin.com/t/how-to-create-an-erc20-token-with-staking-feature/5286

https://github.com/Synthetixio/synthetix/blob/develop/contracts/StakingRewards.sol


https://github.com/animocabrands/ethereum-contracts-nft_staking

truffle box used:
https://github.com/adrianmcli/truffle-next
https://medium.com/@adrianmcli/rapid-ethereum-dapp-development-with-next-js-f6354400e4d4
