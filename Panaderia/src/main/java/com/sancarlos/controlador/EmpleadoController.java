package com.sancarlos.controlador;

import com.sancarlos.modelo.Empleado;
import java.math.BigDecimal;
import java.util.List;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.json.JsonObject;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.OPTIONS;
import javax.ws.rs.POST;

@Path("empleado")
public class EmpleadoController {

    private List<Empleado> loginEmpleado(String email, String password) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("my-persistence-unit");
        EntityManager em = entityManagerFactory.createEntityManager();
        Query query = em.createNamedQuery("Empleado.findByLogin", Empleado.class);
        query.setParameter("email", email);
        query.setParameter("password", password);
        List<Empleado> empleados = query.getResultList();
        return empleados;
    }

    @OPTIONS
    @Path("/login")
    public Response login() {
        return Response.ok()
                .header("Access-Control-Allow-Origin", "*")
                .header("Access-Control-Allow-Methods", "POST")
                .header("Access-Control-Allow-Headers", "Content-Type")
                .build();
    }

    @POST
    @Path("/login")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response login(JsonObject jsonObject) {
        String empleado = jsonObject.getString("correo");
        String pass = jsonObject.getString("pass");
        String s = jsonObject.getString("sucursal");
        BigDecimal sucursal = new BigDecimal(s);
        List<Empleado> emp = loginEmpleado(empleado, pass);
        String resultado = !emp.isEmpty() && emp.get(0).getIdSucursal().getId().compareTo(sucursal) == 0 ? "Exito" : "Error";
        return Response.ok(resultado).header("Access-Control-Allow-Origin", "*").build();
    }
}
