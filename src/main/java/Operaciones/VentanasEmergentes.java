/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDao;

import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
 
public class VentanasEmergentes{
 
    public static void main(String[] args) {
 
        JOptionPane.showMessageDialog(null, "Constructor con 2 parámetros");
 
        JOptionPane.showMessageDialog(null, "Mensaje de información",
                "INFORMATION_MESSAGE", JOptionPane.INFORMATION_MESSAGE);
 
        JOptionPane.showMessageDialog(null, "Mensaje de advertencia",
                "WARNING_MESSAGE", JOptionPane.WARNING_MESSAGE);
 
        JOptionPane.showMessageDialog(null, "Mensaje de Error",
                "ERROR_MESSAGE", JOptionPane.ERROR_MESSAGE);
 
        JOptionPane.showMessageDialog(null, "Mensaje de pregunta",
                "QUESTION_MESSAGE", JOptionPane.QUESTION_MESSAGE);
 
        ImageIcon icono = new ImageIcon("resources/parentesisIcono.png");
        
        JOptionPane.showMessageDialog(null, "Personalizando cuadro de diálogo",
                    "Blog masqueprogramar", JOptionPane.INFORMATION_MESSAGE, icono);
    }
}
