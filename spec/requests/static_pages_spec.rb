require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
    it "should have the content 'Simple App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Simple App')
    end

    describe "right title test home" do
      it "should have the right title home" do
          visit '/static_pages/home'
          expect(page).to have_title("Ruby on Rails Tutorial Sample App")
      end
    end

    describe "base title test" do
      it "should have the right title about" do
          visit '/static_pages/home'
          expect(page).not_to have_title("Home")
      end
    end
  end

  describe "Help page" do
    it "should have the content 'F**'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help Me')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_content('ababa')
    end
  end

  describe "right title test help" do
    it "should have the right title help" do
        visit '/static_pages/help'
        expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "right title about" do
    it "should have the right title about" do
        visit '/static_pages/about'
        expect(page).to have_title("#{base_title} | About")
    end
  end
end
