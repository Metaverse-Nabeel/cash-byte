require 'application_system_test_case'

class TranxactionsTest < ApplicationSystemTestCase
  setup do
    @tranxaction = tranxactions(:one)
  end

  test 'visiting the index' do
    visit tranxactions_url
    assert_selector 'h1', text: 'Tranxactions'
  end

  test 'should create tranxaction' do
    visit tranxactions_url
    click_on 'New tranxaction'

    fill_in 'Amount', with: @tranxaction.amount
    fill_in 'Name', with: @tranxaction.name
    click_on 'Create Tranxaction'

    assert_text 'Tranxaction was successfully created'
    click_on 'Back'
  end

  test 'should update Tranxaction' do
    visit tranxaction_url(@tranxaction)
    click_on 'Edit this tranxaction', match: :first

    fill_in 'Amount', with: @tranxaction.amount
    fill_in 'Name', with: @tranxaction.name
    click_on 'Update Tranxaction'

    assert_text 'Tranxaction was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Tranxaction' do
    visit tranxaction_url(@tranxaction)
    click_on 'Destroy this tranxaction', match: :first

    assert_text 'Tranxaction was successfully destroyed'
  end
end
