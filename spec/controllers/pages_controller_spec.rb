require 'spec_helper'

describe PagesController do
  render_views
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  subject {page}

  describe "GET 'home'" do

    before {visit root_path}

    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | Home")} 
    it {should have_selector('h1', text: "Sample App")}
  
    it "should have the right links on the layout" do
      visit root_path
      click_link "About Us"
      expect(page).to have_title("About Us")
      click_link "Contact Us"
      expect(page).to have_title("Contact Us")
      click_link "Home"
      expect(page).to have_title("Home")
      click_link "Help"
      expect(page).to have_title("Help")
      click_link "Home"
      click_link "Sign up now!"
      expect(page).to have_title("Sign Up")
      click_link "sample app"
      expect(page).to have_title("About Us")
    end


  end


  describe "GET 'contact'" do
    before {visit contact_path}
    it "returns http success" do
      get 'contact'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | Contact Us")} 
    it {should have_selector('h1', text: "Contact Us")}
  end

  describe "GET 'about'" do
    before {visit about_path}
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | About Us")} 
    it {should have_selector('h1', text: "About Us")}
  end

  describe "GET 'help'" do
    before {visit help_path}
    it "returns http success" do
      get 'help'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | Help")} 
    it {should have_selector('h1', text: "Help")}
  end
end
