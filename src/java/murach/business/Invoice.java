package murach.business;

import java.util.*;
import java.text.*;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import static javax.persistence.FetchType.EAGER;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Invoice implements Serializable {
    
    

    private List<LineItem> lineItems;
    private boolean isProcessed;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int orderID;
    private String phone;
    private double total;
    

    public Invoice() {
    }


    public void setLineItems(List<LineItem> lineItems) {
        this.lineItems = lineItems;
    }

    public List<LineItem> getLineItems() {
        return lineItems;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }
    
    public void setInvoiceNumber(int orderID) {
        this.orderID = orderID;
    }

    public int getInvoiceNumber() {
        return orderID;
    }

    public boolean isIsProcessed() {
        return isProcessed;
    }

    public void setIsProcessed(boolean isProcessed) {
        this.isProcessed = isProcessed;
    }

    public double getInvoiceTotal() {
        double invoiceTotal = 0.0;
        for (LineItem item : lineItems) {
            invoiceTotal += item.getTotal();
        }
        return invoiceTotal;
    }

    public void setTotal(String total) {
        double thisTotal;
        thisTotal = Double.parseDouble(total);
        thisTotal = this.getInvoiceTotal();
        thisTotal = thisTotal + (thisTotal * 0.05);
        thisTotal = thisTotal + 15.00;
        this.total = thisTotal;

    }
    public double getTotal(){
        return total;
    }
    public String getInvoiceTotalCurrencyFormat() {
        double total = this.getInvoiceTotal();
        total = total + (total * 0.05);
        total = total + 15.00;
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        String formattedTotal = currency.format(total);
        return formattedTotal;
    }
}