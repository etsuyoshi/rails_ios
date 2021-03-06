require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App')}
    it { should have_title(full_title(''))}
    it { should_not have_title('| Home')}


   # it "should have the h1 'Sample App'" do
   #  visit root_path
   #  expect(page).to have_content('Sample App')
   # end

   # it "should have the base title" do
   #  visit root_path
   #  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
   # end
  

   # it "should not have a custom page title" do 
   #  visit root_path
   #  expect(page).not_to have_title('| Home')
   # end
 end


 describe "Help page" do 
  before { visit help_path }

  it { should have_content('Help') }
  it { should have_title(full_title('Help'))}
 end

 describe "About page" do 
  before {visit about_path }
  it { should have_content('About') }
  it { should have_title(full_title('About Us')) }
 end

 describe "Contact page" do 
  before { visit contact_path }
  it { should have_content('Contact') }
  it { should have_title(full_title('Contact')) }
end
end



# require 'spec_helper'

# describe "StaticPages" do
#   # describe "GET /static_pages" do
#   #   it "works! (now write some real specs)" do
#   #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#   #     get static_pages_home_path
#   #     response.status.should be(200)
#   #   end
#   # end

#   let (:base_title) {"Ruby on Rails Tutorial Sample App" }
#   describe "Home page" do
#   	# it "should have the content 'Sample App'" do
#   	# 	visit '/static_pages/home'
#   	# 	expect(page).to have_content('Sample App')
#   	# end

#   	# it "should have the right title" do
#   	# 	visit "/static_pages/home"
#   	# 	expect(page).to have_title("#{base_title} | Home")
#   	# end

#    #  it "should not have a custom page title" do
#    #    visit '/static_pages/home'
#    #    expect(page).not_to have_title('| Home')
#    #  end


#     it "should have the content 'Sample App'" do
#       visit '/static_pages/home'
#       expect(page).to have_content('Sample App')
#     end

#     it "should have the base title" do
#       visit '/static_pages/home'
#       expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#     end

#     it "should not have a custom page title" do
#       visit '/static_pages/home'
#       expect(page).not_to have_title('| Home')
#     end


#   end

#   describe "Help page" do
#   	it "should have the content 'Help'" do
#   		visit '/static_pages/help'
#   		expect(page).to have_content('Help')
#   	end
#   	it "should have the right title" do
#   		visit "/static_pages/help"
#   		# expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
#       expect(page).to have_title("#{base_title} | Help")
#   	end
#   end

#   describe "About page" do
#   	# it "should have the content 'About Us'" do
#   	# 	visit '/static_pages/about'
#   	# 	expect(page).to have_content('About Us')
#   	# end
#   	# it "should have the right title" do
#   	# 	visit "/static_pages/about"
#   	# 	# expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
#    #    expect(page).to have_title("#{base_title} | About")
#   	# end


#     it "should have the h1 'About Us'" do
#       visit about_path
#       expect(page).to have_content('About Us')
#     end

#     it "should have the title 'About Us'" do
#       visit about_path
#       expect(page).to have_title("#{base_title} | About");
      
#     end
#   end

#   describe "Contact" do
#     it "should have the content 'Contact'" do
#       visit '/static_pages/contact'
#       expect(page).to have_content('Contact')
#     end
#     it "should have the right title" do
#       visit '/static_pages/contact'
#       # expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
#       expect(page).to have_title("#{base_title} | Contact")
#     end
#   end


# end
