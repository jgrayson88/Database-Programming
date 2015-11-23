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

    public String getArtistName() {
        String artistName = 
                ProductDescription.substring(0, ProductDescription.indexOf(" - "));
        return artistName;
    }

    public String getAlbumName() {
        String albumName = 
                ProductDescription.substring(ProductDescription.indexOf(" - ") + 3);
        return albumName;
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
    
    public String getImageURL() {
        String imageURL = "/musicStore/images/" + ProductCode + "_cover.jpg";
        return imageURL;
    }

    public String getProductType() {
        return "Audio CD";
    }

}