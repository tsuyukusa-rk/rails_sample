class MembersController < ApplicationController
  def index
    # 1番目を取ってくる
    @member = Member.find(1)

    # sortさせる
    @members = Member.order('id')
  end
  def show
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def new
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def edit
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def create
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def update
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def destroy
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def search
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def confirm
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def regist
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def thankyou
    render plain: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
end
