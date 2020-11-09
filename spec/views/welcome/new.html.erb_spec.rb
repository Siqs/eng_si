require 'rails_helper'

RSpec.describe "welcome/new.html.erb", type: :view do
    it "should have a form" do
        # render

        # rendered should have_selector "form label[for='clinica_name']", text: "Name" 
        # rendered should have_selector "form input#clinica_name[name='clinica[name]'][type='text']" 
    end

    it "creates a new clinic" do
    end
end
