class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to contact_path, notice: "Die Nachricht wurde erfolgreich versendet."
    else
      flash[:alert] = "Ein Fehler ist beim versenden der Nachricht aufgetreten"
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end

end
