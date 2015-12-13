package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long ProductID;    
    private String ProductCode;
    private String ProductName;
    private String ProductDescription;
    private double ProductPrice;
    private String ProductImage;

    public Product() { 

    }
    
    public Long getId() {
        return ProductID;
    }

    public void setId(Long productID) {
        this.ProductID = productID;
    }

    public void setCode(String code) {
        this.ProductCode = code;
    }

    public String getCode() {
        return ProductCode;
    }
    
    public void setName(String name) {
        this.ProductName = name;
    }

    public String getName() {
        return ProductName;
    }

    public void setDescription(String description) {
        this.ProductDescription = description;
    }

    public String getDescription() {
        return ProductDescription;
    }


    public void setPrice(double price) {
        this.ProductPrice = price;
    }

    public double getPrice() {
        return ProductPrice;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(ProductPrice);
    }
    
    public String getImage() {
        return ProductImage;
    }

    public void setImage(String image) {
        this.ProductImage = image;
    }
    public String getImageURL() {
        String imageURL = "/JGAR_clothing/images/" + ProductCode + ".jpg";
        return imageURL;
    }


}