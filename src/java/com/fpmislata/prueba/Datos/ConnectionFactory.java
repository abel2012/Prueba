/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.prueba.Datos;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.NamingException;

/**
 *
 * @author alumno
 */
public interface ConnectionFactory {
    
    Connection getConnection()throws NamingException, SQLException;
}
