import CryptoPoops from 0x09

pub fun main( index:UInt64 , user: Address) {

    // Get a reference to the user's public Collection
    let recipientsCollections = getAccount(user).getCapability(/public/MyCollection)
        .borrow<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>()
        ?? panic("The recipient does not have a Collection.")

        var NFT = recipientsCollections.borrowAuthNFT(id: index)

    // Log different fields in the nft
    log( "your nft details: " ) 
    log(NFT.favouriteDish)
    log(NFT.magicNumber)
    log(NFT.name)
}
