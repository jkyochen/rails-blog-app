# frozen_string_literal: true

class CreateJoinTableArticleTag < ActiveRecord::Migration[8.0]
  def change
    create_join_table :articles, :tags do |t|
      # t.index [:article_id, :tag_id]
      # t.index [:tag_id, :article_id]
    end
  end
end
