require 'spec_helper'
require 'suopport/utilities.rb'

describe "StaticPages" do

  # let(:base_content){"Sample App"}

  describe "GET /static_pages" do

    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)

      #visit'/static_pages/home'
      #expect(page).to have_content('Sample APP')

    #end

    #以下Homeページ用のtest
    subject { page }

    describe "Home page" do
      before {visit root_path}

      it { should have_content('Sample App') }
      it { should have_title(full_title('')) }
      it { should_not have_title('| Home') }
    end

    #以下Helpページ用のtest
    describe "Help page" do
      before {visit root_path}

      #it { should have_content('Help')}
      #it { should have_title(full_title('Help'))}

    end

    #以下Aboutページ用のtest
    describe "About page" do
      before {visit root_path}

      it { should have_content('About')}
      #it { should have_title(full_title('About'))}

    end

    #以下Contactページ用のtest
    describe "Contact page" do
      before {visit root_path}

      it { should have_content('Contact')}
      #it { should have_title(full_title('Contact'))}

    end

  end

end
