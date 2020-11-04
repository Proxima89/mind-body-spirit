class Affiliate < ApplicationRecord
    belongs_to :category
    has_one :user
    has_many :comments
    validates :title, presence: true,
                    length: {minimum: 5}

                    CLASS_LIST = ["Boza", "Limonada", "Nada", "Oranjada"]
end
