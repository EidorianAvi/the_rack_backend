require 'rest-client'
require 'json'

Shoe.destroy_all


def get_shoes url
    response = RestClient.get (url)
    shoes = JSON.parse response 
        shoes["results"].map do |shoe|
            Shoe.create(
                name: shoe['name'],
                brand: shoe['brand'],
                gender: shoe['gender'],
                retail_price: shoe['retailPrice'],
                colors: shoe['colorway'],
                title: shoe['title'],
                image: shoe['media']['imageUrl'],
            )
    end
end

get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=men&releaseYear=2018")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=50&gender=men&releaseYear=2019")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=women&releaseYear=2018")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=50&gender=women&releaseYear=2019")