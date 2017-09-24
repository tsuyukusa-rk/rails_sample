class Member < ApplicationRecord
  class << self
    def search(query)
      rel = order('id')
      # present? は　空じゃないかの判別
      if query.present?
        # jsのテンプレートリテラルはダブルクォーテーションらしい
        rel = rel.where('name LIKE ?', "%#{query}%")
      end
      return rel
    end
  end
end
