class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :type
    validates :type_id, numericality: { other_than: 1 , message: "can't be blank"}
    
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :family_name,
    presence: true, length: { maximum: 20 }
    validates :given_name,
    presence: true, length: { maximum: 20 }
    validates :detail, presence: true
    validates :account_number, presence: true
    
    # CSVエクスポート出力
  def self.csv_attributes
    ["family_name", "given_name","detail","account_number"]
  end

  # def self.generate_csv
  #   CSV.generate(headers: true) do |csv|
  #     csv << csv_attributes
  #     all.each do |part|
  #       csv << csv_attributes.map{|attr| part.send(attr)}
  #     end
  #   end
  # end
  
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