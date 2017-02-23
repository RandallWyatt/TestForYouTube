require_relative 'base_page'
class SearchPage < BasePage
  include PageObject

  h3(:video_search_results, class:'yt-lockup-title')

end