class Organization < ApplicationRecord

    validates :source_uuid, uniqueness: true
    validates :source_uuid, presence: true
end
