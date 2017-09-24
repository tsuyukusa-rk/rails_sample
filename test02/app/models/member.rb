class Member < ApplicationRecord

  # validation
  validates :name, presence: true

  # << はclassメソッド
  # インスタンスなしでよびだせる
  # インスタンスメソッドは defで書くやつ
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
