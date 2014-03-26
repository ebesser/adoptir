#adoptir

Discover, Endorse, and Review your favorite startups.

[adoptir](http://adoptir.herokuapp.com/)


##Product Description
With so many new products and ventures arising across the country and the world, adoptir helps users find new things to try, review their experiences, and endorse the ones they love.

This product is my first project built on RoR.

##Gems and API's Used

- Angellist API
- will_paginate
- HTTparty
- Devise

##Code Snippet
Part of the seed file that resulted in >36k rows!

```
(1..38).each do |page|
  big_data = HTTParty.get("https://api.angel.co/1/tags/198/startups?page=#{page}")
  big_data["startups"].size.times do |i|
    if big_data["startups"][i]["name"] == nil || big_data["startups"][i]["company_url"] == nil || big_data["startups"][i]["product_desc"] == nil || big_data["startups"][i]["logo_url"] == nil 
     Startup.create(name: big_data["startups"][i]["name"], company_url: big_data["startups"][i]["company_url"], product_desc: big_data["startups"][i]["product_desc"], follower_count: big_data["startups"][i]["follower_count"], twitter_url: big_data["startups"][i]["twitter_url"], crunchbase_url: big_data["startups"][i]["crunchbase_url"], angellist_url: big_data["startups"][i]["angellist_url"], market_id: 1, logo_url: big_data["startups"][i]["logo_url"])
  end
end
```
Like/Unlike Button Without Using JS 
```
<% if current_user.startups.include? @market[i] %>
  <div class="endorse"> 
    <form method="POST" action='/startup_users/delete/<%= @market[i].id %>'><input class="button" id="unendorsebutton" type="submit" value="Unendorse" name="id"/>
      <input name="authenticity_token" type="hidden" value="<%= form_authenticity_token %>" />
      <input name="market_id" type="hidden" value="<%= @market_selected %>" />
       </form>
      </div>
  <% else %>
   <div class="endorse"> 
    <form method="POST" action='/startup_users/create/<%= @market[i].id %>'><input class="button" type="submit" value="Endorse" name="id"/>
      <input name="authenticity_token" type="hidden" value="<%= form_authenticity_token %>" />
      <input name="market_id" type="hidden" value="<%= @market_selected %>" />
    </form>
</div>
  <% end %>
```

