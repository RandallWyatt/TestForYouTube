require_relative 'base_page'
require_relative 'search_result'

class SearchPage < BasePage
  include PageObject

  div(:results, class: 'item-section')
  page_sections(:video_search_results, SearchResult, xpath:'//ol[@class="item-section"]/li/div')
  body(:body, class:/page-loaded/)

  def non_ad_results
    # begin
      video_search_results.select { |search_result|
        !search_result.is_ad?
      }
    # rescue Selenium::WebDriver::Error::StaleElementReferenceError
    # end
  end

  def initialize_page
    wait_until(5,'page did not finish loading results') do
      body_element.element.attribute_value(:class) =~ /page\-loaded/
    end
  end
end

