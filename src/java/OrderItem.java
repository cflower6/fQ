/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author chris
 */
public class OrderItem {
    Product pro = new Product();
    private int Quantity;
    private double total;
    
   public void getTotal(){
        total = pro.getPrice() * Quantity;
    }
}
