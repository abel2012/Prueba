/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.prueba.Datos;

import com.fpmislata.prueba.Negocio.CuentaBancaria;
import com.fpmislata.prueba.Negocio.EntidadBancaria;
import java.util.List;

/**
 *
 * @author alumno
 */
public interface CuentaBancariaDAO extends GenericDAO<CuentaBancaria,Integer> {

    List<CuentaBancaria> findByCodigo(Integer id);
   
}
