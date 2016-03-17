# encoding: utf-8

#  Copyright (c) 2008-2016, Puzzle ITC GmbH. This file is part of
#  Cryptopus and licensed under the Affero General Public License version 3 or later.
#  See the COPYING file at the top-level directory or at
#  https://github.com/puzzle/cryptopus.

require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  include ControllerTest::DefaultHelper
  test "should get account" do
    login_as(:bob)
    xhr :get, :account, {'search_string' => 'acc'}
    result_json = JSON.parse(response.body).first

    account = accounts(:account2)
    group = account.group
    team = group.team

    assert_equal account.accountname, result_json['accountname']
    assert_equal account.id, result_json['id']
    assert_equal 'test', result_json['cleartext_username']
    assert_equal 'password', result_json['cleartext_password']

    assert_equal group.name, result_json['group']
    assert_equal group.id, result_json['group_id']

    assert_equal team.name, result_json['team']
    assert_equal team.id, result_json['team_id']
  end
end
