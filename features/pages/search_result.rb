class SearchResult
  include PageObject

  span(:ad_signifier, class:'yt-badge ad-badge-byline yt-badge-ad')
  link(:go_to_video, class:/yt-uix-tile-link/)
  def is_ad?
    ad_signifier_element.visible?
  end
end