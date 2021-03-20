# frozen_string_literal: true

Before do
  page.driver.browser.manage.window

  @first_screenshot = true

  if @first_screenshot
    FileUtils.rm_rf('evidences/')
    @first_screenshot = false
  end

  Capybara.current_session.driver.browser.manage.delete_all_cookies
end
