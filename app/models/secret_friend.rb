# frozen_string_literal: true

class SecretFriend < ApplicationRecord
  belongs_to :giver, class_name: 'Participant', foreign_key: 'giver'
  belongs_to :receiver, class_name: 'Participant', foreign_key: 'receiver'
end
