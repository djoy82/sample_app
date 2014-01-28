require 'spec_helper'

describe PagesController do
  render_views
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end
    it "should have the right title" do
      visit '/pages/home'
      expect(page).to have_title(" #{base_title} | Home")
      #its(:title) {should match "Ruby on Rails Tutorials Sample app | Home"}
      #response.body.should have_xpath("//title", :text => "Ruby on Rails Tutorials Sample app | Home")
    end
  
    it "should have the content 'Sample App'" do
      visit 'pages/home'
      expect(page).to have_content("Sample App")
    end
  end


  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      expect(response).to be_success
    end
    it "should have the right title" do
      visit 'pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  
    it "should have the content 'Contact Us'" do
      visit 'pages/contact'
      expect(page).to have_content("Contact Us")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
    it "should have the right title" do
      visit 'pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  
    it "should have the content 'About Us'" do
      visit 'pages/about'
      expect(page).to have_content("About Us")
    end
  end
end
