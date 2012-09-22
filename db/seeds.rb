# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8

#Seed data for Location

Location.delete_all
Location.create(title: 'Field Museum',
  category: 'Museum',  
description: 
    %{<p>
        The Field Museum of Natural History (abbreviated FMNH) is located in Chicago, Illinois, USA. It sits on Lake Shore Drive next to Lake Michigan, part of a scenic complex known as the Museum Campus Chicago. The museum collections contain over 21 million specimens, of which only a small portion are ever on display. The president of the museum is Richard W. Lariviere.
      </p>},
image_url: 'field_museum_2.jpg'
 )

# . . .

Location.create(title: 'Shedd Aquarium',
  category: 'Museum',  
description:
    %{<p>
        The Shedd Aquarium (formally the John G. Shedd Aquarium) is an indoor public aquarium in Chicago, Illinois in the United States that opened on May 30, 1930. The aquarium contains over 25,000 fish, and was for some time the largest indoor aquarium in the world with 5,000,000 US gallons (19,000,000 l; 4,200,000 imp gal) of water. The Shedd Aquarium was the first inland aquarium with a permanent saltwater fish collection. It is surrounded by Museum Campus Chicago, which it shares with the Adler Planetarium and the Field Museum of Natural History.
      </p>},
image_url: 'shedd_aquarium.jpg'
)
# . . .

Location.create(title: 'Planetarium',
  category: 'Museum',
  description: 
    %{<p>
        The Adler Planetarium & Astronomy Museum in Chicago, Illinois was the first planetarium built in the Western Hemisphere and is the oldest in existence today. Adler was founded and built in 1930 by the philanthropist Max Adler, with the assistance of the first director of the planetarium, Philip Fox. The Adler Planetarium opened to the public on May 12, 1930. 
      </p>},
image_url: 'planetarium.jpg'
)
