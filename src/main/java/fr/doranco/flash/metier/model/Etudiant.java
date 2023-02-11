/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fr.doranco.flash.metier.model;

/**
 *
 * @author celes
 */
public class Etudiant {
    private String nom;
    private String prenom;
    private String matricule;
    private int poids;
    private int moyenne;

    public Etudiant(String nom, String prenom, String matricule, int poids, int moyenne) {
        this.nom = nom;
        this.prenom = prenom;
        this.matricule = matricule;
        this.poids = poids;
        this.moyenne = moyenne;
    }

    public int getMoyenne() {
        return moyenne;
    }

    public void setMoyenne(int moyenne) {
        this.moyenne = moyenne;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public int getPoids() {
        return poids;
    }

    public void setPoids(int poids) {
        this.poids = poids;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Etudiant{");
        sb.append("nom=").append(nom);
        sb.append(", prenom=").append(prenom);
        sb.append(", matricule=").append(matricule);
        sb.append(", poids=").append(poids);
        sb.append(", moyenne=").append(moyenne);
        sb.append('}');
        return sb.toString();
    }
         
}
