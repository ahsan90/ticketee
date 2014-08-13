require 'spec_helper'
feature "Editing Projects" do
  before do
    project = FactoryGirl.create(:project, name: "TextMate 2")
    visit '/'
    click_link 'TextMate 2'

  end
  scenario "Updating a project" do
    click_link "Delete Project"
    expect(page).to have_content("Project has been destroyed.")
    visit '/'
    expect(page).to have_no_content("TextMate 2")
  end
end