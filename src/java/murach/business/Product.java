package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//class describes a Product object
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
    //reteive ProductID
    public Long getId() {
        return ProductID;
    }

    //set ProductID
    public void setId(Long productID) {
        this.ProductID = productID;
    }

    //set Code
    public void setCode(String code) {
        this.ProductCode = code;
    }

    //get ProductCode
    public String getCode() {
        return ProductCode;
    }
    
    //set product name
    public void setName(String name) {
        this.ProductName = name;
    }

    //get product name
    public String getName() {
        return ProductName;
    }

    //set product description
    public void setDescription(String description) {
        this.ProductDescription = description;
    }

    //get prduct description
    public String getDescription() {
        return ProductDescription;
    }

    //set price
    public void setPrice(double price) {
        this.ProductPrice = price;
    }

    //get price
    public double getPrice() {
        return ProductPrice;
    }

    //format price as currency
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
    
    public String getCartImageURL() {
        String cartImageURL = "/JGAR_clothing/images/cart_" + ProductCode + ".jpg";
        return cartImageURL;
    }


}