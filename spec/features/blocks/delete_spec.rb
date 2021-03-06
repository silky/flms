require 'spec_helper'

feature 'Blocks > Delete' do
  include NamedFactories

  scenario 'deleting a new block', js: true do
    block_1a

    capybara_sign_in user_1
    visit "/flms/blocks"
    page.evaluate_script 'window.confirm = function() { return true; }'
    click_link "delete-block-#{ block_1a.id }"

    expect(Flms::Block).to have(0).instances
  end
end

