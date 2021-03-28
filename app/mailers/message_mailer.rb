class MessageMailer < ActionMailer::Base

  default from: 'donotreply.memorizer@gmail.com'
  default to: 'donotreply.memorizer@gmail.com'

  def new_message(message)
    @message = message

    mail subject: "#{message.subject}"
  end

end
