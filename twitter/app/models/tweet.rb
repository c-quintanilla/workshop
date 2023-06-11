class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tags
    attribute :hashtags

    after_create :create_tags

    def create_tags
        hashtags.split(',').each do |h|
            hash= Hashtag.find_or_create_by name: h
            Tag.create tweet: self, hashtag: hash
        end
    end

    def creationdate
        created_at.strftime("%e %b %Y")
    end    

    def list_hash
        tags.map{|t| t.hashtag.name}.join(',')
    end


end
