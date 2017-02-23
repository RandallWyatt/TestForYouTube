require_relative 'base_page'

class LandingPage < BasePage
  include PageObject

  page_url BASE_URL

  text_field(:search_for_video, id:'masthead-search-term')
  button(:search_button, id:'search-btn')

  def video_search
    self.search_for_video = 'scaring people'
    search_button_element.click
  end


end