class Blog < ApplicationRecord
    belongs_to :user
    has_many :histories, dependent: :destroy
    has_many :viewed_by_users, through: :histories, source: :user
    has_one_attached :image

    validates :title, :content, :user, presence: true
  
    def self.ransackable_attributes(auth_object = nil)
      %w(title content ingredients calories)
      
    end
    def self.ransackable_associations(auth_object = nil)
      []
    end
  end