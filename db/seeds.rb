# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Character.delete_all
Issue.delete_all
Volume.delete_all

require "rest-client"

API_KEY = "34779152ba4c237e56c5e92f7fc7b9f73ff2fd6a".freeze
URL = "https://comicvine.gamespot.com/api/".freeze

vol_string = RestClient.get "#{URL}volumes/?api_key=#{API_KEY}&format=json"
volumes = JSON.parse(vol_string)["results"]
volumes.each do |v|
  volume = Volume.create(
    name:            v["name"],
    description:     v["deck"],
    count_of_issues: v["count_of_issues"],
    start_year:      v["start_year"],
    id:              v["id"]
  )
end

char_string = RestClient.get "#{URL}characters/?api_key=#{API_KEY}&format=json"
characters = JSON.parse(char_string)["results"]

characters.each do |c|
  issue_id = c["first_appeared_in_issue"]["id"]
  iss_string = RestClient.get "#{URL}issue/4000-#{issue_id}/?api_key=#{API_KEY}&format=json"
  iss_info = JSON.parse(iss_string)["results"]

  issue = Issue.create(
    name:             iss_info["name"],
    description:      iss_info["deck"],
    has_staff_review: iss_info["has_staff_review"],
    cover_date:       iss_info["cover_date"],
    volume_id:        iss_info["volume"]["id"],
    id:               iss_info["id"]
  )

  character = Character.create(
    name:        c["name"],
    description: c["deck"],
    gender:      c["gender"],
    issue_id:    c["first_appeared_in_issue"]["id"],
    image:       c["image"]["medium_url"],
    id:          c["id"]
  )
end

puts Character.count
puts Issue.count
puts Volume.count
