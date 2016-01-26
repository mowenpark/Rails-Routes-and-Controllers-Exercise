class ContactSharesController < ApplicationController
  def index
    render json: ContactShare.all
  end

  def create
    contact_share = ContactShare.new(contact_share_params)
    if contact_share.save
      render json: contact_share
    else
      render(
        json: contact_share.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def update
    contact_share = ContactShare.find_by(id: params[:id])
    if contact_share.update(contact_share_params)
      render json: contact_share
    else
      render(
        json: contact_share.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    @contact_share = ContactShare.find_by(id: params[:id]) # find_by will return nil which is parsed into null
    render json: @contact_share
  end

  def destroy
    @contact_share = ContactShare.find(params[:id])
    @contact_share.destroy
    render json: @contact_share
  end

  private
  def contact_share_params
    params.require(:contact_share).permit(:user_id, :contact_id)
  end
end
