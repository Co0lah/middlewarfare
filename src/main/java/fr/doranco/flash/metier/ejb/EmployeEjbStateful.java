/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fr.doranco.flash.metier.ejb;

import fr.doranco.flash.metier.model.Employe;
import jakarta.ejb.Stateful;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author celes
 */
@Stateful
public class EmployeEjbStateful {

    List<Employe> listEmploye = new ArrayList<>();

    public EmployeEjbStateful() {
    }

    public void addEmploye(Employe employe) {
        this.listEmploye.add(employe);
    }

    public List<Employe> getListEmployes() {
        return listEmploye;
    }

// Mettre les salaires dans un array, boucle, sum et diviser par array size ????!!! 
// La somme des salaires diviser par size de listemploye ???!!!!!
    
//   public int getMoyenne(List<Integer> l) {
//       listEmploye.contains("salaire");
//        int sum = 0;
//        for (Integer i : l) {
//            sum += i;
//        }
//        return sum / l.size();
//    }
}
