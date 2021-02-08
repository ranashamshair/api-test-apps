class JsonWebToken
    class << self
        def encode(payload, exp = 1.hours.from_now)
            payload[:exp] = exp.to_i
            JWT.encode(payload, "a96f665a-c693-460d-b31e-b86229df16a8")
        end

        def decode(token)
            body = JWT.decode(token,"a96f665a-c693-460d-b31e-b86229df16a8")[0]
            HashWithIndifferentAccess.new body
        rescue
            nil
        end
    end
end