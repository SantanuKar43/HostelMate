package db;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hm_residents")
public class Resident implements Serializable{
	@Id
	String regd_no;
	String room,name,hostel,image,pwd;
	public void setRegdNo(String regd_no) {
		this.regd_no = regd_no;
	}
	public String getRegdNo() {
		return regd_no;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getRoom() {
		return room;
	}
	public void setHostel(String hostel) {
		this.hostel = hostel;
	}
	public String getHostel() {
		return hostel;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getImage(){
		return image;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwd(){
		return pwd;
	}
	
}
