package com.mydomain.vo;

import java.io.Serializable;
import java.util.Arrays;

public class Product implements Serializable {
 private int productNo;
 private String productName;
 private int productPrice;
 private String productCode;
 private int productAmount; //물품개수
 private String productExplain;
 private String imageName;
 private String imageComment;
 private String imageComment2;
 private String imageComment3;
 private String imageComment4;
 
public Product() {
	super();
}
public Product(int productNo, String productName, int productPrice, String productCode, int productAmount,
		String productExplain, String imageName, String imageComment, String imageComment2, String imageComment3,
		String imageComment4) {
	super();
	this.productNo = productNo;
	this.productName = productName;
	this.productPrice = productPrice;
	this.productCode = productCode;
	this.productAmount = productAmount;
	this.productExplain = productExplain;
	this.imageName = imageName;
	this.imageComment = imageComment;
	this.imageComment2 = imageComment2;
	this.imageComment3 = imageComment3;
	this.imageComment4 = imageComment4;
}
@Override
public String toString() {
	return "Product [productNo=" + productNo + ", productName=" + productName + ", productPrice=" + productPrice
			+ ", productCode=" + productCode + ", productAmount=" + productAmount + ", productExplain=" + productExplain
			+ ", imageName=" + imageName + ", imageComment=" + imageComment + ", imageComment2=" + imageComment2
			+ ", imageComment3=" + imageComment3 + ", imageComment4=" + imageComment4 + "]";
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((imageComment == null) ? 0 : imageComment.hashCode());
	result = prime * result + ((imageComment2 == null) ? 0 : imageComment2.hashCode());
	result = prime * result + ((imageComment3 == null) ? 0 : imageComment3.hashCode());
	result = prime * result + ((imageComment4 == null) ? 0 : imageComment4.hashCode());
	result = prime * result + ((imageName == null) ? 0 : imageName.hashCode());
	result = prime * result + productAmount;
	result = prime * result + ((productCode == null) ? 0 : productCode.hashCode());
	result = prime * result + ((productExplain == null) ? 0 : productExplain.hashCode());
	result = prime * result + ((productName == null) ? 0 : productName.hashCode());
	result = prime * result + productNo;
	result = prime * result + productPrice;
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Product other = (Product) obj;
	if (imageComment == null) {
		if (other.imageComment != null)
			return false;
	} else if (!imageComment.equals(other.imageComment))
		return false;
	if (imageComment2 == null) {
		if (other.imageComment2 != null)
			return false;
	} else if (!imageComment2.equals(other.imageComment2))
		return false;
	if (imageComment3 == null) {
		if (other.imageComment3 != null)
			return false;
	} else if (!imageComment3.equals(other.imageComment3))
		return false;
	if (imageComment4 == null) {
		if (other.imageComment4 != null)
			return false;
	} else if (!imageComment4.equals(other.imageComment4))
		return false;
	if (imageName == null) {
		if (other.imageName != null)
			return false;
	} else if (!imageName.equals(other.imageName))
		return false;
	if (productAmount != other.productAmount)
		return false;
	if (productCode == null) {
		if (other.productCode != null)
			return false;
	} else if (!productCode.equals(other.productCode))
		return false;
	if (productExplain == null) {
		if (other.productExplain != null)
			return false;
	} else if (!productExplain.equals(other.productExplain))
		return false;
	if (productName == null) {
		if (other.productName != null)
			return false;
	} else if (!productName.equals(other.productName))
		return false;
	if (productNo != other.productNo)
		return false;
	if (productPrice != other.productPrice)
		return false;
	return true;
}
public int getProductNo() {
	return productNo;
}
public void setProductNo(int productNo) {
	this.productNo = productNo;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getProductPrice() {
	return productPrice;
}
public void setProductPrice(int productPrice) {
	this.productPrice = productPrice;
}
public String getProductCode() {
	return productCode;
}
public void setProductCode(String productCode) {
	this.productCode = productCode;
}
public int getProductAmount() {
	return productAmount;
}
public void setProductAmount(int productAmount) {
	this.productAmount = productAmount;
}
public String getProductExplain() {
	return productExplain;
}
public void setProductExplain(String productExplain) {
	this.productExplain = productExplain;
}
public String getImageName() {
	return imageName;
}
public void setImageName(String imageName) {
	this.imageName = imageName;
}
public String getImageComment() {
	return imageComment;
}
public void setImageComment(String imageComment) {
	this.imageComment = imageComment;
}
public String getImageComment2() {
	return imageComment2;
}
public void setImageComment2(String imageComment2) {
	this.imageComment2 = imageComment2;
}
public String getImageComment3() {
	return imageComment3;
}
public void setImageComment3(String imageComment3) {
	this.imageComment3 = imageComment3;
}
public String getImageComment4() {
	return imageComment4;
}
public void setImageComment4(String imageComment4) {
	this.imageComment4 = imageComment4;
} 
}
