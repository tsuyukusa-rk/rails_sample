class MembersController < ApplicationController
  def index
    @member = Member.find(1)
  end
end
