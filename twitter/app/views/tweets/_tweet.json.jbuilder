json.extract! tweet, :id, :body, :string, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
