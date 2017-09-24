class MembersController < ApplicationController
  # アクションコールバック
  # after_action、around_actionとかもある
  before_action :init
  # 初期処理
  private def init
    @title = '画面'
  end
  # リダイレクト用
  private def redirect (to, msg)
    redirect_to(to, notice: msg)
  end
  # 一覧表示
  def index
    @page_title = '一覧' + @title
    # sortさせる
    @members = Member.order("id")
  end
  # 個別ユーザー表示
  def show
    @page_title = 'ユーザー照会' + @title
    # 1番目を取ってくる
    @member = Member.find(params[:id])
  end
  # 検索結果
  def search
    @page_title = '検索結果一覧' + @title
    @members = Member.search(params[:q])
    render("index")
  end
  # 新規作成
  def new
    @page_title = '新規作成' + @title
    @member = Member.new(birthday: Date.new(2000, 1, 1))
  end
  # 編集
  def edit
    @page_title = '編集' + @title
    @member = Member.find(params[:id])
  end
  # dbにデータ追加
  def create
    @page_title = '新規作成' + @title
    # modelをインスタンスしてsaveでdb追加
    @member = Member.new(params[:member])
    # railsのsaveはidのあるなしで上書きか新規なのかをハンドリングしてくれる
    if @member.save
      # redirectさせるとreload対策になる
      redirect(@member, '会員を登録しました')
    else
      render('new')
    end
  end
  # dbの更新
  def update
    @page_title = '編集' + @title
    # idで検索してくる
    @member = Member.find(params[:id])
    # パラメータをもとに、既存データを上書き
    @member.assign_attributes(params[:member])
    # saveするときにid情報を持っているので、上書きとなる
    if @member.save
      # redirectさせるとreload対策になる
      redirect(@member, '会員情報を更新しました')
    else
      render('edit')
    end
  end
  # dbのカラム削除
  # 物理削除は基本的にしない
  # 状態管理で行うことが多い
  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect(:members, '会員を削除しました')
  end
  def confirm
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def regist
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def thankyou
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
end
