module Api
  class ClientsController < ApplicationController
    def index
      render json: Client.all,
        include: { accounts: { only: :id, methods: :balance } },
        except: [ :created_at, :updated_at ]
    end

    def create
      if CreateClientService.call(create_client_params)
        render json: { success: true }
      else
        render json: { success: false }
      end
    end

    private

    def create_client_params
      params.require(:client).permit(:name, :initial_quantity)
    end
  end
end
