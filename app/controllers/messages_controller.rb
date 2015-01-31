class MessagesController < ApplicationController
  def index
    @messages = current_user.accept_messages
  end

  def new
    @message = Message.new
    @message.accepter_id = params[:id]
  end

  def create
    @message = Message.new(message_params)
    @message.content
    @message.sender_id = current_user.id

    if @message.save
      redirect_to(message_path(@message.id), notice: t('message.create_topic_success'))
    else
      render action: 'new'
    end

  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def message_params
    params.require(:message).permit(:content, :accepter_id)
  end

end
