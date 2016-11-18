class NewsletterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    case newsletter_args[:newsletter]
    when 'weekly'
      NewsletterMailer.weekly(args).deliver
    when 'monthly'
      NewsletterMailer.monthly(args).deliver
    when 'yearly'
      NewsletterMailer.yearly(args).deliver
    else
      raise 'No newsletter type passed'
    end
  end
end
