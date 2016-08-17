package murach.business;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Checkout implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int CheckoutID;
    private String BillingFirstName;
    private String BillingLastName;
    private String BillingCOMPANY;
    private String BillingCOUNTRY;
    private String BillingAddress1;
    private String BillingAddress2;
    private String BillingCITY;
    private String BillingSTATE;
    private String BillingZIP;
    private String PHONE;
    



    public Checkout() {


    BillingFirstName="";
    BillingLastName="";
    BillingCOMPANY="";
    BillingCOUNTRY="";
    BillingAddress1="";
    BillingAddress2="";
    BillingCITY="";
    BillingSTATE="";
    BillingZIP="";
    PHONE="";
    }
    
    public int getId() {
        return CheckoutID;
    }

    public void setId(int CheckoutID) {
        this.CheckoutID = CheckoutID;
    }
    
    public String getBillingFirstName() {
        return BillingFirstName;
    }

    public void setBillingFirstName(String BillingFirstName) {
        this.BillingFirstName = BillingFirstName;
    }
    
    public String getBillingLastName() {
        return BillingLastName;
    }

    public void setBillingLastName(String BillingLastName) {
        this.BillingLastName = BillingLastName;
    }
    
    public String getBillingCompany() {
        return BillingCOMPANY;
    }

    public void setBillingCompany(String BillingCOMPANY) {
        this.BillingCOMPANY = BillingCOMPANY;
    }
    
    public String getBillingCountry() {
        return BillingCOUNTRY;
    }

    public void setBillingCountry(String BillingCOUNTRY) {
        this.BillingCOUNTRY = BillingCOUNTRY;
    }
    
    public String getBillingAddress1() {
        return BillingAddress1;
    }

    public void setBillingAddress1(String BillingAddress1) {
        this.BillingAddress1 = BillingAddress1;
    }
    
    public String getBillingAddress2() {
        return BillingAddress2;
    }

    public void setBillingAddress2(String BillingAddress2) {
        this.BillingAddress2 = BillingAddress2;
    }

    public void setBillingCity(String BillingCITY) {
        this.BillingCITY = BillingCITY;
    }

    public String getBillingCity() {
        return BillingCITY;
    }

    public void setBillingState(String BillingSTATE) {
        this.BillingSTATE = BillingSTATE;
    }

    public String getBillingState() {
        return BillingSTATE;
    }

    public void setBillingZip(String BillingZIP) {
        this.BillingZIP = BillingZIP;
    }

    public String getBillingZip() {
        return BillingZIP;
    }

    public void setPhone(String PHONE) {
        this.PHONE = PHONE;
    }

    public String getPhone() {
        return PHONE;
    }


}