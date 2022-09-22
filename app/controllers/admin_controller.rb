class AdminController < ApplicationController
before_action :can_access?

  def admin_panel
    @accounts = Account.where(admin: false)
  end

  def profile
    @account = Account.find(params[:id])
  end

  def can_access?
      @show_sidebar = true
    unless current_account.admin?
      redirect_to root_url, flash: {danger: "Nema prav"}
    end
  end
end
