/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package prueba;

import com.fpmislata.prueba.ejer1.Persona;
import com.fpmislata.prueba.ejer1.Sexo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author alumno
 */
public class Prueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        Map<String,Persona> mapPersonas=new HashMap<>();
        List<Persona> personas = new ArrayList<Persona>();
        Persona persona1 = new Persona("53765678O", "Jack", "Sparrow", Sexo.HOMBRE);
        Persona persona2 = new Persona("34562314I", "Bill", "Turner", Sexo.HOMBRE);
        Persona persona3 = new Persona("45876921I", "Cocodrilo", "Dundee", Sexo.HOMBRE);

        mapPersonas.put(persona1.getDni(),persona1);
        mapPersonas.put(persona2.getDni(),persona2);
        mapPersonas.put(persona3.getDni(),persona3);
                
       
        
        Persona personaBuscada=mapPersonas.get("1I");
        System.out.println(personaBuscada.getNombreCompleto());
        
        Set<String> dnis=mapPersonas.keySet();
        for(String dni:dnis){
        Persona persona=mapPersonas.get(dni);
        System.out.println(dni + " " + persona.getNombreCompleto());
        }
        
                
        /*personas.add(persona1);
        personas.add(persona2);
        personas.add(persona3);
*/
        /*
        String dni = "25";
        for (Persona persona : personas) {
            if (persona.getDni().equals(dni)) {
                System.out.println(persona.getNombreCompleto());

            }

        }
*/
        System.out.println("N de elementos" + " " + mapPersonas.size());
         System.out.println("N de elementos" + " " +  mapPersonas.keySet());
         System.out.println("Nombre completo" + " " + mapPersonas.get("53765678O").getNombreCompleto());
        
          System.out.println("N de elementos" + " " +  mapPersonas.keySet());

         


    }

    private static void imprimirPorConsolaPersonas(List<Persona> personas) {
    }
}
