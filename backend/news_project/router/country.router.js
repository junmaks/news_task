import Router from "express";
import countryController from "../controller/country.controller.js";

const router = new Router()


router.post('/country', countryController.addCountry)
router.get('/country', countryController.getCountries)
router.get('/country/:id', countryController.getCountryOne)
router.put('/country/:id', countryController.updateCountry)
router.delete('/country/:id', countryController.deleteCountry)


export default router;
