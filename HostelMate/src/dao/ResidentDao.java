package dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.hibernate.exception.ConstraintViolationException;

import db.Resident;

public class ResidentDao {
	public static void save(Resident r) throws ConstraintViolationException{
		Session session = new AnnotationConfiguration().configure().buildSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		session.save(r);
		t.commit();
		session.close();
	}
	public static List getResidents(String search) {
		List list = null;
		Session session = new AnnotationConfiguration().configure().buildSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		
		Criteria cr = session.createCriteria(Resident.class);
		cr.add(Restrictions.ilike("name", search,MatchMode.START));
		list = cr.list();
		
		t.commit();
		session.close();
		return list;
	}
	public static Resident getResident(String regd_no) {
		// TODO Auto-generated method stub
		Session session = new AnnotationConfiguration().configure().buildSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		t.begin();
		
		Resident r = (Resident) session.get(Resident.class, regd_no);
		
		t.commit();
		session.close();
		return r;
	}
	
}
