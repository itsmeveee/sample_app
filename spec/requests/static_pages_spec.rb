require 'spec_helper'

describe "Static pages" do 
	describe "Home page" do

		it "should have the h1 'Sample App' " do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end
it "shoudl have the title 'Home'" do
	visit '/static_pages/home'
	page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')

end

	end

	describe "Help page" do
		it "should have the content 'Help Page'" do
			visit '/static_pages/help'
			page.should have_content('Help Page')
		end
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
		end
	end

	describe "About page" do
		it "should have the content 'About Page'" do
		visit '/static_pages/about'
		page.should have_content ('About Page')
	end
	it "should have the title 'About'" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About')
	end

end
 	
end