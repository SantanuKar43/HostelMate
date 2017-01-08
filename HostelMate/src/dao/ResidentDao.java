package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
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
}
