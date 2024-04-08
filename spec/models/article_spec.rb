require 'rails_helper'

RSpec.describe Article, type: :model do
  context "" do
    it "orders them in reverse chronologically" do
      article = Article.create!(:title => "First blog", :body => "hello world.", :status => "public")
      expect(article.title).to eq("First blog")
      expect(article.body).to eq("hello world.")
      expect(article.status).to eq("public")
    end
  end
end
