# encoding: utf-8

#  Copyright (c) 2008-2016, Puzzle ITC GmbH. This file is part of
#  Cryptopus and licensed under the Affero General Public License version 3 or later.
#  See the COPYING file at the top-level directory or at
#  https://github.com/puzzle/cryptopus.

class RailsDefaultTimeStamps < ActiveRecord::Migration
  def change
    rename_column :teams, :created_on, :created_at
    rename_column :teams, :updated_on, :updated_at

    rename_column :groups, :created_on, :created_at
    rename_column :groups, :updated_on, :updated_at

    rename_column :accounts, :created_on, :created_at
    rename_column :accounts, :updated_on, :updated_at

    rename_column :items, :created_on, :created_at
    rename_column :items, :updated_on, :updated_at

    rename_column :teammembers, :created_on, :created_at
    rename_column :teammembers, :updated_on, :updated_at
  end
end
