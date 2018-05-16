class CreateClientService < ApplicationService
  def initialize(params)
    @client_name              = params[:name]
    @account_initial_quantity = params[:initial_quantity]
  end

  def call
    client      = Client.new(name: @client_name)
    account     = client.accounts.new
    account.transactions.new(quantity: @account_initial_quantity)

    client.save
  end
end
