# encoding: utf-8

module GoogleSearchSteps
  step 'Googleページに移動' do
    Capybara.current_driver = :selenium
    Capybara.app_host = 'http://www.google.co.jp'
    visit '/'
  end

  step ":keys で検索" do |keys|
    puts keys
    fill_in "gbqfq", with: keys
    click_button 'gbqfb'
  end

  step ':link_name のリンクをクリック' do |link_name|
    click_link link_name
  end

  step ':expected_str の文字がページに含まれる' do |expected_str|
    page.should have_content(expected_str)
  end
end

RSpec.configure {|c| c.include GoogleSearchSteps }
