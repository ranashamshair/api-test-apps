class Api::TokensController < ApplicationController
    def generate_token
        if params[:secret].present? && params[:secret] == "a96f665a-c693-460d-b31e-b86229df16a8"
            token = JsonWebToken.encode({})
        end
        render json: {status: 200, token: token}
    end
end