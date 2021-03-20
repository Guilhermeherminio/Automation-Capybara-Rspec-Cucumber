# frozen_string_literal: true

module Utils
  # utils to help extra functionalities
  class Screenshot
    def initialize(page)
      @page = page
    end

    def generate(full_page = true)
      time = Time.now.inspect.split('+')[0].gsub(/\s/, '').delete('-').delete(':')
      image_name = "evidences/screenshots/screenshot_#{time[0..7]}_#{time[9..13]}.png"

      @page.save_screenshot(image_name, full: full_page)

      image_name
    end
  end
end

World(Utils)
