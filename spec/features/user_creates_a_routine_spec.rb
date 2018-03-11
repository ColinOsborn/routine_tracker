require 'rails_helper'


RSpec.feature "User submits a new routine" do
  scenario "they enter data to create a new routine" do
    routine_name   = "Nordic Skiing"

    visit '/routines'
    click_on "New Routine"
    fill_in "routine_name", with: routine_name
    click_on "Create Routine"

    expect(page).to have_content routine_name
    
    end
  end
