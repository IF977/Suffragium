class Feedback
    attr_accessor :saude,:educacao,:seguranca
    def initialize
        @saude="proposta de saude"
        @educacao="proposta de educacao"
        @seguranca="proposta de seguranca"
        @comentarios="comentarios sobre as propostas"
        @sentimento="analise de sentimento da proposta"
    end
end
#teste