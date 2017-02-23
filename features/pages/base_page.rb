class BasePage
  include PageObject

  def should_contain_text(text)
    wait_until(5,"#{text} failed to appear"){
      self.text.include? text
    }
  end
end