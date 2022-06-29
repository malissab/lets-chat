class User < ApplicationRecord
    validates_uniqueness_of :username

    def self.randomize
    first_part = 'ChatMember'
    second_part = ['A', 'B', 'C']
    third_part = rand(1..20)
    username = "#{first_part}#{second_part.sample}#{third_part}"
    create(username: username)
    end
end
