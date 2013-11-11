/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.prueba.Datos;

import com.fpmislata.prueba.Negocio.EntidadBancaria;

/**
 *
 * @author alumno
 */
public interface EntidadBancariaDAO2 {
    
    EntidadBancariaDAO read(int idEntidad);
    EntidadBancariaDAO insert(EntidadBancaria entidadBancaria);
    EntidadBancariaDAO delete( EntidadBancaria entidadBancaria7);
    EntidadBancariaDAO  findAll();
    EntidadBancariaDAO findByCodigo(String codigo);
    
}
