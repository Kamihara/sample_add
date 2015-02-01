require 'spec_helper'

describe "StaticPages" do

  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  # the test for "Home Page"
  describe "Home Page" do
    before { visit root_path }
    # it "should have the content 'Sample App'" do
    it { should have_content('Sample App') }
    # it "should have the base title" do
    it { should have_title(full_title('')) }
    # it "should not have a custom page title" do
    it { should_not have_title("| Home") }
  end

  # the test for "Help Page"
  describe "Help Page" do
    before { visit help_path }
    # it "should have the content 'Help'" do
    it { should have_content('Help') }
    # it "should have the title 'Help'" do
    it { should have_title(full_title('Help')) }
  end

  # the test for "About Page"
  describe "About Page" do
    before { visit about_path }
    # it "should have the content 'About Us'" do
    it { should have_content('About Us') }
    # it "should have the title 'About Us'" do
    it { should have_title(full_title('About Us')) }
  end

  # the test for "Contact"
  describe "Contact Page" do
    before { visit contact_path }
    # it "should have the content 'Contact'" do
    it { should have_content('Contact') }
    # it "should have the title 'Contact'" do
    it { should have_title(full_title('Contact')) }
  end
end
