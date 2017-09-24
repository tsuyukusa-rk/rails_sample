class Member < ApplicationRecord

  # validation
  # save発火時に行われる処理
  # catchはsaveの分岐
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
