class User < ApplicationRecord
    validates_uniqueness_of :username
    scope :all_except, ->(user) { where.not(id: user) }

    def self.randomize
    first_part = 'ChatMember'
    second_part = ['A', 'B', 'C']
    third_part = rand(1..20)
    username = "#{first_part}#{second_part.sample}#{third_part}"
    create(username: username)
    end
end
