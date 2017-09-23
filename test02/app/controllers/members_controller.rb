class MembersController < ApplicationController
  def index
    @member = Member.find(1)
  end
  def show
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def new
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def edit
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def create
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def update
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def destroy
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def search
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def confirm
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def regist
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
  def thankyou
    render text: '#[params[:controller]] , #[params[:action]], #[params[:id]]'
  end
end
