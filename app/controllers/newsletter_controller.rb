class NewsletterController < ApplicationController
  def new
  end

  def create
    NewsletterJob.perform_later({
      emails: params[:emails],
      subject: params[:subject],
      newsletter: params[:newsletter]
      })
      flash[:success] = "Newsletter Sent!"
      redirect_to root_path
  end
end
