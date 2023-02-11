/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fr.doranco.flash.metier.ejb;

import fr.doranco.flash.metier.model.Etudiant;
import jakarta.ejb.Stateful;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author celes
 */
@Stateful
public class EtudiantEjbStateful {
   private List<Etudiant> listEtudiants;

    public EtudiantEjbStateful() {
        listEtudiants = new ArrayList<>();
    }
    
    /**
     * Ajouter un etudiant dans la liste listEtudiants
     * @param etudiant 
     */
    public void addEtudiant(Etudiant etudiant){
        this.listEtudiants.add(etudiant);
    }

    public List<Etudiant> getListEtudiants() {
        return listEtudiants;
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
