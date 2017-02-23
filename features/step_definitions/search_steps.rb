Given /^I go to the YouTube Website$/ do
  visit(LandingPage)
end


When(/^I search for a video$/) do
  on(LandingPage).video_search
end

And /^I select the video I want$/ do
  on(SearchPage) do |search|
    search.video_search_results_element.click
  end
end

Then(/^I will be able to watch the video$/) do
  pending #@current_page.should_contain_text 'Whoopee Cushion'
end