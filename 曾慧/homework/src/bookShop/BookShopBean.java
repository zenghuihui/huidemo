package bookShop;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

public class BookShopBean {
private String item;
private String submit;
Vector v=new Vector();
public String getItem() {
	return item;
}
public void setItem(String item) {
	this.item = item;
}

public void setSubmit(String submit) {
	this.submit = submit;
}

public void addItem(String item) {
	v.addElement(item);
}
public String[] getItems(){
	String[] s=new String[v.size()];
	v.copyInto(s);
	return s;
	
}
public void processRequest(HttpServletRequest request){
	if(submit==null)
		addItem(item);
	if(submit.equals("����"))
		addItem(item);
	reset();
}
private void reset() {
	// TODO Auto-generated method stub
	setSubmit(null);
	setItem(null);
}

}
