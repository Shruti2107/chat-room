class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Ancient', 'Creative', 'Dangerous', 'Elijah', 'Flying', 'Gilded']
    nouns = ['Highway', 'Intern', 'Warrior', 'Friend', 'Stuart','Heroku']
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end
 