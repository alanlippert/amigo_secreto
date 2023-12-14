# frozen_string_literal: true

class Participant < ApplicationRecord
  has_one :secret_friend_as_giver, class_name: 'SecretFriend', foreign_key: 'giver'
  has_one :secret_friend_as_receiver, class_name: 'SecretFriend', foreign_key: 'receiver'
end
