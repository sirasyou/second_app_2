require 'spec_helper'
require 'suopport/utilities.rb'

describe "Static pages" do

  # let(:base_content){"Sample App"}

    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)

      #visit'/static_pages/home'
      #expect(page).to have_content('Sample APP')

    #end

    #以下Homeページ用のtest
    subject { page }

    shared_examples_for"all static pages" do
      it { should have_content(heading) }
    end

    describe "Home page" do
      before {visit root_path}
      let(:heading) {'Sample App'}
      let(:page_title) {''}

      it_should_behave_like "all static pages"
=begin
      it { should have_content('Sample App') }
      it { should have_title(full_title('')) }
      it { should_not have_title('| Home') }
=end
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

    it "should have the right links on the layout" do
      visit root_path
      click_link"About"
      expect(page).to have_title('About')
      click_link"Contact"
      expect(page).to have_title('Contact')
    end

end
