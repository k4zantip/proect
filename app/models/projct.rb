class Projct < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true
    validates :summary, presence: true
end
