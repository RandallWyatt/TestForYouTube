Given /^I go to the YouTube Website$/ do
  visit(LandingPage)
end


When(/^I search for a video$/) do
  on(LandingPage).video_search
end

And /^I select the video I want$/ do
  on SearchPage do |page|
    page.non_ad_results[0].go_to_video
  end
end

Then(/^I will be able to watch the video$/) do
  @current_page.should_contain_text 'Published'
end