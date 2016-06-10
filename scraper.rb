#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

member   = WikiData::Category.new('Categorie:Lid van De Nationale Assemblée', 'nl').member_titles
chair    = WikiData::Category.new('Categorie:Voorzitter van De Nationale Assemblée', 'nl').member_titles
minister = WikiData::Category.new('Categorie:Surinaams minister', 'nl').member_titles

member_en = WikiData::Category.new('Category:Members of the National Assembly (Suriname)', 'en').member_titles
chair_en  = WikiData::Category.new('Category:Speakers of the National Assembly (Suriname)', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { nl: member | chair | minister, en: member_en | chair_en  })

