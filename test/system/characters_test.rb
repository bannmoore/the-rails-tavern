require "application_system_test_case"
require "test_helper"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_path
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit_with_http_auth characters_path
    click_on "New character"

    fill_in 'Name', with: 'Azeel'
    fill_in 'Character class', with: 'Barbarian'

    click_on "Create Character"

    assert_text "Name:"
    click_on "Back"
  end

  test "updating a Character" do
    visit_with_http_auth characters_path
    click_on "Edit", match: :first

    fill_in 'Character class', with: 'Oracle'

    click_on "Update Character"

    assert_text "Name:"
    click_on "Back"
  end

  test "destroying a Character" do
    visit_with_http_auth characters_path
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Characters\n"
  end
end
