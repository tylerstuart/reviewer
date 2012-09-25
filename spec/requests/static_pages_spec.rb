require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'Revbundle'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Revbundle')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Revbundle | Home")
    end
  end

  describe "Help page" do 
  	it "should have the h1 'Help'" do 
  	  visit '/static_pages/help'
  	  page.should have_selector('h1', :text => 'Help')	
  	end

  	it "should have the title 'Help'" do
  	  visit '/static_pages/help'
  	  page.should have_selector('title', :text => 'Revbundle | Help')
  	end
  end


  describe "About page" do 
  	it "should have the content 'About'" do
  	  visit '/static_pages/about'
  	  page.should have_selector('h1', :text => 'About')
  	end

  	it "should have the title 'About'" do
  	  visit '/static_pages/about'
  	  page.should have_selector('title', :text => 'Revbundle | About')	
  	end
  end 
end
