const RealEstate = artifacts.require('RealEstateCharacter')
const fs = require('fs')

const metadataProperty = {
    "name": "",
    "description": "",
    "document": "",
    "attributes": [
        {
            "property_type": "residential",
            "valuation": 0
        },
    ]
}
/*
module.exports = async callback => {
    const re = await RealEstate.deployed()
    length = await re.getNumberOfCharacters()
    index = 0
    while (index < length) {
        console.log('Let\'s get the overview of your character ' + index + ' of ' + length)
        let characterMetadata = metadataProperty
        let characterOverview = await re.characters(index)
        index++
        characterMetadata['name'] = characterOverview['name']
        if (fs.existsSync('metadata/' + characterMetadata['name'].toLowerCase().replace(/\s/g, '-') + '.json')) {
            console.log('test')
            continue
        }
        console.log(characterMetadata['name'])
        characterMetadata['attributes'][0]['value'] = characterOverview['strength']['words'][0]
        characterMetadata['attributes'][1]['value'] = characterOverview['dexterity']['words'][0]
        characterMetadata['attributes'][2]['value'] = characterOverview['constitution']['words'][0]
        characterMetadata['attributes'][3]['value'] = characterOverview['intelligence']['words'][0]
        characterMetadata['attributes'][4]['value'] = characterOverview['wisdom']['words'][0]
        characterMetadata['attributes'][5]['value'] = characterOverview['charisma']['words'][0]
        filename = 'metadata/' + characterMetadata['name'].toLowerCase().replace(/\s/g, '-')
        let data = JSON.stringify(characterMetadata)
        fs.writeFileSync(filename + '.json', data)
    }
    callback(re)
}
*/