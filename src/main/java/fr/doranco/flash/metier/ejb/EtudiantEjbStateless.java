/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fr.doranco.flash.metier.ejb;

import jakarta.ejb.Stateless;

/**
 *
 * @author celes
 */
@Stateless
public class EtudiantEjbStateless {

    public EtudiantEjbStateless() {
    }
    
     public char getMoyenne(int moyenne){
        
        if(moyenne < 10){
            return 'F';
        } else if(moyenne < 12){
            return 'E';
        }else if (moyenne < 14){
            return 'D';
        }else if (moyenne < 16) {
            return 'C';
        }else if (moyenne < 18) {
            return 'B';
        }
        return 'A';
    }   
}
