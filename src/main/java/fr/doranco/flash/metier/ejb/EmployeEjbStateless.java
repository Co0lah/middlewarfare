/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fr.doranco.flash.metier.ejb;

import jakarta.ejb.Stateless;
import java.util.List;

/**
 *
 * @author celes
 */
@Stateless
public class EmployeEjbStateless {
    
    public int getMoyenne(List<Integer> l) {
        int sum = 0;
        for (Integer i : l) {
            sum += i;
        }
        return sum / l.size();
    }
    
}
