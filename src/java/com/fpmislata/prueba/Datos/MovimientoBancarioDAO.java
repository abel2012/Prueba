/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.prueba.Datos;

import com.fpmislata.prueba.Negocio.MovimientoBancario;
import java.util.List;

/**
 *
 * @author alumno
 */
public interface MovimientoBancarioDAO extends GenericDAO<MovimientoBancario,Integer>{

   List<MovimientoBancario> findByCodigo(Integer id);
}
