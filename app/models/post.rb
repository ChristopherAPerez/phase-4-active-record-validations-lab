class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }

    validate :title_is_clickbait

    def title_is_clickbait
        if title.include? == "True Facts"
            validates :title, exclusion: { in: ['True Facts'] }
        end
    end

end
