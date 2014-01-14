# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'httparty'
# require 'faker'

market_names = ["Big Data", "Analytics", "E-Commerce", "Marketplaces", "SaaS", "3D Printing", "Project Management", "Mobile Commerce", "Developer Tools", "CRM", "Web Development", "Email", "Logistics", "Crowdfunding", "Food and Beverages"]

market_names.each do |name|
  Market.create(name: name)
end


big_data = HTTParty.get("https://api.angel.co/1/tags/198/startups")
big_data["startups"].size.times do |i|
  # if big_data["startups"][i]["name"] == nil || big_data["startups"][i]["company_url"] == nil || big_data["startups"][i]["product_desc"] == nil || big_data["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: big_data["startups"][i]["name"], company_url: big_data["startups"][i]["company_url"], product_desc: big_data["startups"][i]["product_desc"], follower_count: big_data["startups"][i]["follower_count"], twitter_url: big_data["startups"][i]["twitter_url"], crunchbase_url: big_data["startups"][i]["crunchbase_url"], angellist_url: big_data["startups"][i]["angellist_url"], market_id: 1, logo_url: big_data["startups"][i]["logo_url"])
 # end
end

analytics = HTTParty.get("https://api.angel.co/1/tags/52/startups")
analytics["startups"].size.times do |i|
  # if analytics["startups"][i]["name"] == nil || analytics["startups"][i]["company_url"] == nil || analytics["startups"][i]["product_desc"] == nil || analytics["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: analytics["startups"][i]["name"], company_url: analytics["startups"][i]["company_url"], product_desc: analytics["startups"][i]["product_desc"], follower_count: analytics["startups"][i]["follower_count"], twitter_url: analytics["startups"][i]["twitter_url"], crunchbase_url: analytics["startups"][i]["crunchbase_url"], angellist_url: analytics["startups"][i]["angellist_url"], market_id: 2, logo_url: analytics["startups"][i]["logo_url"])
 # end
end

e_commerce = HTTParty.get("https://api.angel.co/1/tags/29/startups")
e_commerce["startups"].size.times do |i|
  # if e_commerce["startups"][i]["name"] == nil || e_commerce["startups"][i]["company_url"] == nil || e_commerce["startups"][i]["product_desc"] == nil || e_commerce["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: e_commerce["startups"][i]["name"], company_url: e_commerce["startups"][i]["company_url"], product_desc: e_commerce["startups"][i]["product_desc"], follower_count: e_commerce["startups"][i]["follower_count"], twitter_url: e_commerce["startups"][i]["twitter_url"], crunchbase_url: e_commerce["startups"][i]["crunchbase_url"], angellist_url: e_commerce["startups"][i]["angellist_url"], market_id: 3, logo_url: e_commerce["startups"][i]["logo_url"])
 # end
end

marketplaces = HTTParty.get("https://api.angel.co/1/tags/162/startups")
marketplaces["startups"].size.times do |i|
  # if marketplaces["startups"][i]["name"] == nil || marketplaces["startups"][i]["company_url"] == nil || marketplaces["startups"][i]["product_desc"] == nil || marketplaces["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: marketplaces["startups"][i]["name"], company_url: marketplaces["startups"][i]["company_url"], product_desc: marketplaces["startups"][i]["product_desc"], follower_count: marketplaces["startups"][i]["follower_count"], twitter_url: marketplaces["startups"][i]["twitter_url"], crunchbase_url: marketplaces["startups"][i]["crunchbase_url"], angellist_url: marketplaces["startups"][i]["angellist_url"], market_id: 4, logo_url: marketplaces["startups"][i]["logo_url"])
 # end
end

saas = HTTParty.get("https://api.angel.co/1/tags/10/startups")
saas["startups"].size.times do |i|
  # if saas["startups"][i]["name"] == nil || saas["startups"][i]["company_url"] == nil || saas["startups"][i]["product_desc"] == nil || saas["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: saas["startups"][i]["name"], company_url: saas["startups"][i]["company_url"], product_desc: saas["startups"][i]["product_desc"], follower_count: saas["startups"][i]["follower_count"], twitter_url: saas["startups"][i]["twitter_url"], crunchbase_url: saas["startups"][i]["crunchbase_url"], angellist_url: saas["startups"][i]["angellist_url"], market_id: 5, logo_url: saas["startups"][i]["logo_url"])
 # end
end

threedprinting = HTTParty.get("https://api.angel.co/1/tags/2389/startups")
threedprinting["startups"].size.times do |i|
  # if threedprinting["startups"][i]["name"] == nil || threedprinting["startups"][i]["company_url"] == nil || threedprinting["startups"][i]["product_desc"] == nil || threedprinting["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: threedprinting["startups"][i]["name"], company_url: threedprinting["startups"][i]["company_url"], product_desc: threedprinting["startups"][i]["product_desc"], follower_count: threedprinting["startups"][i]["follower_count"], twitter_url: threedprinting["startups"][i]["twitter_url"], crunchbase_url: threedprinting["startups"][i]["crunchbase_url"], angellist_url: threedprinting["startups"][i]["angellist_url"], market_id: 6, logo_url: threedprinting["startups"][i]["logo_url"])
 # end
end

projmanag = HTTParty.get("https://api.angel.co/1/tags/310/startups")
projmanag["startups"].size.times do |i|
  # if projmanag["startups"][i]["name"] == nil || projmanag["startups"][i]["company_url"] == nil || projmanag["startups"][i]["product_desc"] == nil || projmanag["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: projmanag["startups"][i]["name"], company_url: projmanag["startups"][i]["company_url"], product_desc: projmanag["startups"][i]["product_desc"], follower_count: projmanag["startups"][i]["follower_count"], twitter_url: projmanag["startups"][i]["twitter_url"], crunchbase_url: projmanag["startups"][i]["crunchbase_url"], angellist_url: projmanag["startups"][i]["angellist_url"], market_id: 7, logo_url: projmanag["startups"][i]["logo_url"])
 # end
end

mobilecomm = HTTParty.get("https://api.angel.co/1/tags/94/startups")
mobilecomm["startups"].size.times do |i|
  # if mobilecomm["startups"][i]["name"] == nil || mobilecomm["startups"][i]["company_url"] == nil || mobilecomm["startups"][i]["product_desc"] == nil || mobilecomm["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: mobilecomm["startups"][i]["name"], company_url: mobilecomm["startups"][i]["company_url"], product_desc: mobilecomm["startups"][i]["product_desc"], follower_count: mobilecomm["startups"][i]["follower_count"], twitter_url: mobilecomm["startups"][i]["twitter_url"], crunchbase_url: mobilecomm["startups"][i]["crunchbase_url"], angellist_url: mobilecomm["startups"][i]["angellist_url"], market_id: 8, logo_url: mobilecomm["startups"][i]["logo_url"])
 # end
end

devtools = HTTParty.get("https://api.angel.co/1/tags/1132/startups")
devtools["startups"].size.times do |i|
  # if devtools["startups"][i]["name"] == nil || devtools["startups"][i]["company_url"] == nil || devtools["startups"][i]["product_desc"] == nil || devtools["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: devtools["startups"][i]["name"], company_url: devtools["startups"][i]["company_url"], product_desc: devtools["startups"][i]["product_desc"], follower_count: devtools["startups"][i]["follower_count"], twitter_url: devtools["startups"][i]["twitter_url"], crunchbase_url: devtools["startups"][i]["crunchbase_url"], angellist_url: devtools["startups"][i]["angellist_url"], market_id: 9, logo_url: devtools["startups"][i]["logo_url"])
 # end
end

crm = HTTParty.get("https://api.angel.co/1/tags/83/startups")
crm["startups"].size.times do |i|
  # if crm["startups"][i]["name"] == nil || crm["startups"][i]["company_url"] == nil || crm["startups"][i]["product_desc"] == nil || crm["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: crm["startups"][i]["name"], company_url: crm["startups"][i]["company_url"], product_desc: crm["startups"][i]["product_desc"], follower_count: crm["startups"][i]["follower_count"], twitter_url: crm["startups"][i]["twitter_url"], crunchbase_url: crm["startups"][i]["crunchbase_url"], angellist_url: crm["startups"][i]["angellist_url"], market_id: 10, logo_url: crm["startups"][i]["logo_url"])
 # end
end

webdev = HTTParty.get("https://api.angel.co/1/tags/3127/startups")
webdev["startups"].size.times do |i|
  # if webdev["startups"][i]["name"] == nil || webdev["startups"][i]["company_url"] == nil || webdev["startups"][i]["product_desc"] == nil || webdev["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: webdev["startups"][i]["name"], company_url: webdev["startups"][i]["company_url"], product_desc: webdev["startups"][i]["product_desc"], follower_count: webdev["startups"][i]["follower_count"], twitter_url: webdev["startups"][i]["twitter_url"], crunchbase_url: webdev["startups"][i]["crunchbase_url"], angellist_url: webdev["startups"][i]["angellist_url"], market_id: 11, logo_url: webdev["startups"][i]["logo_url"])
 # end
end

email = HTTParty.get("https://api.angel.co/1/tags/632/startups")
email["startups"].size.times do |i|
  # if email["startups"][i]["name"] == nil || email["startups"][i]["company_url"] == nil || email["startups"][i]["product_desc"] == nil || email["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: email["startups"][i]["name"], company_url: email["startups"][i]["company_url"], product_desc: email["startups"][i]["product_desc"], follower_count: email["startups"][i]["follower_count"], twitter_url: email["startups"][i]["twitter_url"], crunchbase_url: email["startups"][i]["crunchbase_url"], angellist_url: email["startups"][i]["angellist_url"], market_id: 12, logo_url: email["startups"][i]["logo_url"])
 # end
end

logistics = HTTParty.get("https://api.angel.co/1/tags/1545/startups")
logistics["startups"].size.times do |i|
  # if logistics["startups"][i]["name"] == nil || logistics["startups"][i]["company_url"] == nil || logistics["startups"][i]["product_desc"] == nil || logistics["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: logistics["startups"][i]["name"], company_url: logistics["startups"][i]["company_url"], product_desc: logistics["startups"][i]["product_desc"], follower_count: logistics["startups"][i]["follower_count"], twitter_url: logistics["startups"][i]["twitter_url"], crunchbase_url: logistics["startups"][i]["crunchbase_url"], angellist_url: logistics["startups"][i]["angellist_url"], market_id: 13, logo_url: logistics["startups"][i]["logo_url"])
 # end
end

crowdfunding = HTTParty.get("https://api.angel.co/1/tags/3010/startups")
crowdfunding["startups"].size.times do |i|
  # if crowdfunding["startups"][i]["name"] == nil || crowdfunding["startups"][i]["company_url"] == nil || crowdfunding["startups"][i]["product_desc"] == nil || crowdfunding["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: crowdfunding["startups"][i]["name"], company_url: crowdfunding["startups"][i]["company_url"], product_desc: crowdfunding["startups"][i]["product_desc"], follower_count: crowdfunding["startups"][i]["follower_count"], twitter_url: crowdfunding["startups"][i]["twitter_url"], crunchbase_url: crowdfunding["startups"][i]["crunchbase_url"], angellist_url: crowdfunding["startups"][i]["angellist_url"], market_id: 14, logo_url: crowdfunding["startups"][i]["logo_url"])
 # end
end

foodbev = HTTParty.get("https://api.angel.co/1/tags/72/startups")
foodbev["startups"].size.times do |i|
  # if foodbev["startups"][i]["name"] == nil || foodbev["startups"][i]["company_url"] == nil || foodbev["startups"][i]["product_desc"] == nil || foodbev["startups"][i]["logo_url"] == nil 
  #   puts "didn't work"
  # else
   Startup.create(name: foodbev["startups"][i]["name"], company_url: foodbev["startups"][i]["company_url"], product_desc: foodbev["startups"][i]["product_desc"], follower_count: foodbev["startups"][i]["follower_count"], twitter_url: foodbev["startups"][i]["twitter_url"], crunchbase_url: foodbev["startups"][i]["crunchbase_url"], angellist_url: foodbev["startups"][i]["angellist_url"], market_id: 15, logo_url: foodbev["startups"][i]["logo_url"])
 # end
end







# Consolidated Effort = Fail :(

# markets_urls = [52, 29, 162, 10, 2389, 310, 94, 1132, 83, 3127, 632, 1545, 3010, 72]

# markets_urls.each do |market_url| 

# market = HTTParty.get("https://api.angel.co/1/tags/market_url/startups")

#   (0..1000).each do |i|
#     if market["startups"][i]["name"] == nil || market["startups"][i]["company_url"] == nil || market["startups"][i]["product_desc"] == nil || market["startups"][i]["follower_count"] == nil || market["startups"][i]["angellist_url"] == nil 
#       puts "didn't work"
#     else
#      Startup.create(name: market["startups"][i]["name"], company_url: market["startups"][i]["company_url"], product_desc: market["startups"][i]["product_desc"], follower_count: market["startups"][i]["follower_count"], twitter_url: market["startups"][i]["twitter_url"], crunchbase_url: market["startups"][i]["crunchbase_url"], angellist_url: market["startups"][i]["angellist_url"], market_id: 1)
#    end
#   end
# end
