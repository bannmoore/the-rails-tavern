require 'test_helper'

class CharacterFlowTest < ActionDispatch::IntegrationTest
  test 'can see the welcome page' do
    get '/'
    assert_select 'h1', 'The Tavern'
  end

  test 'can create a character' do
    auth = ActionController::HttpAuthentication::Basic.encode_credentials('bannmoore', 'secret')

    get '/characters/new', headers: { 'HTTP_AUTHORIZATION' => auth }
    assert_response :success

    post '/characters', params: { character: { name: 'Talon', character_class: 'Paladin' }}, headers: { 'HTTP_AUTHORIZATION' => auth }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select 'strong', 'Name:'
  end
end
