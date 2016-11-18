class NewsletterMailer < ApplicationMailer
  def weekly
    mail subject: arg[:subject], to: args[:email]
  end

  def monthly
    mail subject: arg[:subject], to: args[:email]
  end

  def yearly
    mail subject: arg[:subject], to: args[:email]
  end
end
