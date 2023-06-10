class Tweet < ApplicationRecord
    belongs_to :user

    def creationdate
        created_at.strftime("%e %b %Y")
    end    
end
