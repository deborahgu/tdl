require 'spec_helper'
feature 'Visitor goes to homepage' do
  scenario 'home page loads without error' do
       visit root_path
       page.status_code.should be 200 
  end

  scenario 'home page has correct title' do
      visit root_path
      page.should have_title 'Tufts Digital Library'
  end

  scenario 'user clicks on Murrow collection overview' do
      visit root_path
      click_link "Edward R. Murrow collection"
      page.should have_content "These digitized recordings of This I Believe were made possible"
  end

  scenario 'user clicks on Tufts and local history' do
      visit root_path
      click_link "Tufts and local history"
      page.should have_content "The DCA has digitized thousands of photographs from the history of the University"
  end

  scenario 'user clicks on E-scholarship' do
      visit root_path
      click_link "E-scholarship"
      page.should have_content "The Tufts Digital Library has a growing collection of scholarship by faculty, students, and staff."
  end

  scenario 'user clicks on Historical New England Medical Center Archives collection' do
      visit root_path
      click_link "Historical New England Medical Center Archives"
      page.should have_content "As of July 2013, DCA is preserving the historical New England Medical Center (NEMC) Archives for the Tufts Medical Center located in Boston, MA"
  end

  scenario 'user clicks on A New Nation Votes' do
      visit root_path
      click_link "A New Nation Votes"
      page.should have_content  "which allows you to narrow down your search by candidate, office, year, party, jurisdiction, election type, and state or territory."
  end

  scenario 'user clicks on Dagomba Dance Drumming' do
      visit root_path
      click_link "Dagomba Dance Drumming"
      page.should have_content "music professor David Locke and the late Alhaji Abubakari Lunna"
  end

  scenario 'user goes to advanced search page' do
      visit root_path
      click_link "Advanced"
      page.status_code.should be 200
  end

  scenario 'user browses Name facet' do
      visit root_path
      click_link "American Antiquarian Society"
      page.should have_content "Names > American Antiquarian Society"
  end

  scenario 'user click on search' do
    visit root_path
    click_link "Search"
    page.should have_content "search for a title or a specific"
  end
end
