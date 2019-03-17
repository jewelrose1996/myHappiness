package admin;


import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aspire ES1-432
 */
public class TableSupplies {
    DefaultTableModel supplyTable = new javax.swing.table.DefaultTableModel(
    new Object [][] {

    },
    new String [] {
        "Item No.", "Description", "Unit", "Quantity", "Cost (per unit)", "Item Type", "Total Amount", "Date Recorded"
    }
) {
    boolean[] canEdit = new boolean [] {
        false, false, false, false, false, false, false, false
    };

    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return canEdit [columnIndex];
    }
};
}
