import CryptoPoops from 0x09
import NonFungibleToken from 0x09

transaction(recipient: Address, name: String, favouriteDish: String , magicNumber:Int) {

  prepare(signer: AuthAccount) {

    let minter = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
                    ?? panic("Not the owner")

    // Get a reference to the `recipient`s public Collection
    let recipientsPublicCollection = 
                                    getAccount(recipient).getCapability(/public/MyCollection)
                                      .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                      ?? panic("does not have a Collection.")

    // mint the NFT using the reference to the `Minter` and pass in the metadata
    let nft <- minter.createNFT(name: name, favouriteDish : favouriteDish , magicNumber : magicNumber)

    // deposit the NFT in the recipient's Collection
    recipientsPublicCollection.deposit(token: <- nft)

    log("mint successfully")
  }

}
 
