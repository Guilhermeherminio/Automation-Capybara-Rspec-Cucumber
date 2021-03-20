# frozen_string_literal: true

Given('the user gets all deputies from api') do
  @length_deputies = DataHelper::DeputiesDataHelper.new.length_parlamentary_id
end

Given('the automation visits the parliamentary bench site') do
  visit('https://www.camara.leg.br/deputados/bancada-atual')
end

Then('the automation checks if the both deputies information is matching') do
  expect(@all_deputies.text.to_i).to eq @length_deputies
  Utils::Screenshot.new(page).generate
end

Then('the automation checks if the both deputies information is not matching') do
  Utils::Screenshot.new(page).generate
  expect(@all_deputies.text.to_i).not_to eq @length_deputies
end

And('the automation gets the amout of deputies') do
  @all_deputies = ParliamentaryBenchPage.new.deputies_total
end

Given('the user gets all political party from api') do
  @political_party_api = DataHelper::PoliticalPartyDataHelper.new.length_political_party
end

And('the automation gets the amout of political party') do
  @political_party = ParliamentaryBenchPage.new.political_party_table
  @political_party_length = @political_party.length
end

Then('the automation checks if the both political party information is matching') do
  expect(@political_party_length).to eq @political_party_api
end
