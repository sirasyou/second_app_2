require 'spec_helper'

describe "StaticPages" do
  
  let(:base_content){"Sample App"}
  
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
        expect(page).to have_title("Second App")
        
      end
      
      #コンテンツのテスト
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content("#{base_content}")
      end
      
      #タイトルにHomeが含まれていない
      it "should not have a custom page title" do
        visit '/static_pages/home'
        expect(page).not_to have_title('| Home')
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
        expect(page).to have_content("#{base_content}")
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
        expect(page).to have_content("#{base_content}")
      end
    end
    
    #以下Contactページ用のtest
    describe "Contact page" do
      
      #タイトルのテスト
      it "should have the right title" do
        visit '/static_pages/contact'
        expect(page).to have_title('Contact')
      end
      
      #コンテンツのテスト
      it "should have the content 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_content("#{base_content}")
      end
    end
    
  end
  
end
