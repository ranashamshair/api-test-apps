class ApplicationController < ActionController::API
    

    def decode_token
        token = JsonWebToken.decode(params[:token])
        render json: {status: 422, message: "Token Invalid"} if token.blank?
    end
end
