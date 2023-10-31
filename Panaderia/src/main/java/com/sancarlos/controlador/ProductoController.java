package com.sancarlos.controlador;

import com.fasterxml.jackson.core.JsonProcessingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sancarlos.modelo.Producto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

@Path("productos")
public class ProductoController {

    private final ObjectMapper objectMapper = new ObjectMapper();
    
    private List<Producto> obtenerProductos() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.createNamedQuery("Producto.findAll", Producto.class).getResultList();
    }
    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public Response sucursales() throws JsonProcessingException {
        List<Producto> productos = obtenerProductos();
        return Response.ok(objectMapper.writeValueAsString(productos)).header("Access-Control-Allow-Origin", "*").build();
    }

}
