/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.prueba.Datos;

import java.util.List;

/**
 *
 * @author alumno
 */
public interface EntidadBancariaDAO extends GenericDAO<com.fpmislata.prueba.Negocio.EntidadBancaria, Integer> {
      List<com.fpmislata.prueba.Negocio.EntidadBancaria> findByCodigo(String codigo);    
}
