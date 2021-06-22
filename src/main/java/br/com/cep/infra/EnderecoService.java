package br.com.cep.infra;

import br.com.cep.domain.Endereco;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.core.MediaType;

public class EnderecoService {

    private final String REST_URI = "https://viacep.com.br/ws/";
    private final Client client = ClientBuilder.newClient();
    
    public Endereco obterPorCep(String cep) {
        
        return client
                .target(REST_URI)
                .path(cep + "/json")
                .request(MediaType.APPLICATION_JSON)
                .get(Endereco.class);
    }
}
