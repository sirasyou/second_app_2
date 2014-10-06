require 'spec_helper'

describe "StaticPages" do
  
  describe "GET /static_pages" do
    
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
      
      #visit'/static_pages/home'
      #expect(page).to have_content('Sample APP')
      
    #end
    
    #以下Homeページ用のtest
    describe "Home page" do
      
      #タイトルのテスト
      it "should have the right title" do
        visit '/static_pages/home'
        expect(page).to have_title("Home")
        
      end
      
      #コンテンツのテスト
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end
    end
    
    #以下Helpページ用のtest
    describe "Help page" do
      
      #タイトルのテスト
      it "should have the right title" do
        visit '/static_pages/help'
        expect(page).to have_title("Help")
      end
      
      #コンテンツのテスト
      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Sample App')
      end
    end
    
    #以下Aboutページ用のtest
    describe "About page" do
      
      #タイトルのテスト
      it "should have the right title" do
        visit '/static_pages/about'
        expect(page).to have_title('About')
      end
      
      #コンテンツのテスト
      it "should have the content 'About Us'" do 
        visit '/static_pages/about'
        expect(page).to have_content('Sample App')
      end
    end
    
  end
  
end
