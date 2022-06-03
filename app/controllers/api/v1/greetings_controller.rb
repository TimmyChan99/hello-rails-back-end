class Api::V1::GreetingsController < ApplicationController
	def index
    @message = Greeting.find(Random.rand(1..5))
    render json: { messages: @message.message }.to_json
  end
end
