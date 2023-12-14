# frozen_string_literal: true

class CreateSecretFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :secret_friends do |t|
      t.integer :giver
      t.integer :receiver

      t.timestamps
    end
  end
end
