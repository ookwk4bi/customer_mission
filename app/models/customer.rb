class Customer < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :type
    validates :family_name,
    presence: true, length: { maximum: 20 }
    validates :given_name,
    presence: true, length: { maximum: 20 }
    validates :detail, presence: true
    validates :account_number, presence: true

  
    def avg_score
      unless self.comments.empty?
        comments.average(:score).round(1).to_f
      else
        0.0
      end
    end
  
    def comment_score_percentage
      unless self.comments.empty?
        comments.average(:score).round(1).to_f*100/5
      else
        0.0
      end
    end
    end