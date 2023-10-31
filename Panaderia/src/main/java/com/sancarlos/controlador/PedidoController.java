package com.sancarlos.controlador;

import com.fasterxml.jackson.core.JsonProcessingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sancarlos.modelo.Empleado;
import com.sancarlos.modelo.Producto;
import com.sancarlos.modelo.Sucursal;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import javax.json.JsonObject;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.ws.rs.Consumes;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.POST;

@Path("pedido")
public class PedidoController {

    private final ObjectMapper objectMapper = new ObjectMapper();
    
    private List<Producto> obtenerProductos() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
        EntityManager em = entityManagerFactory.createEntityManager();
        return em.createNamedQuery("Producto.findAll", Producto.class).getResultList();
    }
    
    @GET
    @Produces({MediaType.APPLICATION_JSON})
    public Response sucursales() throws JsonProcessingException {
        List<Producto> sucursales = obtenerProductos();
        return Response.ok(objectMapper.writeValueAsString(sucursales)).header("Access-Control-Allow-Origin", "*").build();
    }
    
    @OPTIONS
    @Path("/generarPedido")
    public Response generarPedido() {
        return Response.ok()
                .header("Access-Control-Allow-Origin", "*")
                .header("Access-Control-Allow-Methods", "POST")
                .header("Access-Control-Allow-Headers", "Content-Type")
                .build();
    }

    @POST
    @Path("/generarPedido")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response generarPedido(JsonObject jsonObject) {
        String sucursal = jsonObject.getString("sucursal");
        String empleado = jsonObject.getString("empleado");
        String productos = jsonObject.getString("productos");
        
        
        
        return Response.ok("").header("Access-Control-Allow-Origin", "*").build();
    }

}
