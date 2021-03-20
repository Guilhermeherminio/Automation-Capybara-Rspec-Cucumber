# frozen_string_literal: true

class ParliamentaryBenchPage < BasePage
  element :deputies_total, '#main-content > div.container.mt-4 > section:nth-child(1) > table > tfoot > tr > th:nth-child(2)'
  elements :political_party_table, '#main-content > div.container.mt-4 > section:nth-child(1) > table > tbody > tr > td:nth-child(1) > a'
end
