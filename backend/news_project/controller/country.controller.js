import db from '../db.js'

const Country = db.Country


class CountryController {
    async addCountry(req, res) {
        try {
            const {name_country, description_country,} = req.body
            let newCountry = Country.build({name_country: name_country, description_country: description_country })
            await newCountry.save()
            res.json("OK")
        } catch (e) {
            console.log(e)
        }
    }
    async getCountries(req, res) {
        const countries = await Country.findAll();
        res.json(countries)
    }
    async getCountryOne(req, res) {
        
    }
    async updateCountry(req, res) {

    }

    async deleteCountry(req, res) {

    }
}

export default new CountryController();