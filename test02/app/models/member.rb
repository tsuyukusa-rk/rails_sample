class Member < ApplicationRecord

  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z+\z]/i

  # validation
  # save発火時に行われる処理
  # catchはsaveの分岐
  validates :name, presence: true, format: { with: /\A[A-Za-z\w*\z]/, allow_blank: true, message: :invalid_member_name  }
  validates :password, length: { minimum: 10 }, confirmation: true
  validates(:email, format: { with: VALID_EMAIL_REGEXP }, confirmation: true)
  validates(:tel, numericality: true, length: { in: 10..11 })
  validates(:postalCode, numericality: true, length: { is:7 }, presence: true )

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
