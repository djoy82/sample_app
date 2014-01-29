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
    it {should have_content("Sample App")}
  end


  describe "GET 'contact'" do
    before {visit contact_path}
    it "returns http success" do
      get 'contact'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | Contact Us")} 
    it {should have_content("Contact Us")}
  end

  describe "GET 'about'" do
    before {visit about_path}
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | About Us")} 
    it {should have_content("About Us")}
  end

  describe "GET 'help'" do
    before {visit help_path}
    it "returns http success" do
      get 'help'
      expect(response).to be_success
    end
    it {should have_title(" #{base_title} | Help")} 
    it {should have_content("Help")}
  end
end
