class Resource < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
    validates :description, presence: true, length: {  minimum: 5, maximum: 500 }
    validates :url, presence: true, uniqueness: true, format: { with:  /^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/i, :multiline => true }
    belongs_to :resource_type
    has_many :resource_categories
end
