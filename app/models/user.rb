class User < ApplicationRecord
    validates :username, uniqueness: true


    def self.randomize
    first_part = 'ChatMember'
    second_part = ['A', 'B', 'C']
    third_part = rand(1..20)
    username = "#{first_part}#{second_part.sample}#{third_part}"
    create(username: username)
    end
end
