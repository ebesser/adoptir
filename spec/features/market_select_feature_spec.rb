require 'spec_helper'

describe "Markets" do
  describe "Market Discover" do
    before do 
      visit root_path
    end
    
    it "should display a dropdown with all markets" do
     find_field('market_id', options = Market.all)
    end

    it "should display a Go button" do 
      page.should have_button("Go")
    end
  end

  describe "Market-Startup View" do
    # before do
    #   visit root_path
    #   select("CRM", :from => "market_id")
    #   # click_button("Go")
    #   # find("option[value='1']").click
    #   # market_names = []
    #   Market.find(1).startups.size.times do |i|
    #     Market.find(1).startups[i].name << market_names
    #   end
    # end

    # it "Should display all of the startups associated with the selected market" do
    #   page.should have_content("Sakura Sky Media")
    # end 

    

 end




end