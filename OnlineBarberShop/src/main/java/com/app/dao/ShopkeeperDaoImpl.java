package com.app.dao;

import java.util.ArrayList;
import java.util.List;
import com.app.pojos.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
@Repository
@Transactional
public  class ShopkeeperDaoImpl implements IShopkeeperDao{

	@Autowired SessionFactory sf;
	
	@Override
	public String addService(Services s) {
		
		 Session hs=sf.getCurrentSession();
		 hs.save(s);
		return "Service registered successfully : ID "+s.getServiceId();
	}

	@Override
	public String removeService(int serviceId) {
		Session hs = sf.getCurrentSession();
		Services s = hs.get(Services.class,serviceId);
		if (s != null) {
			hs.delete(s);
			return "service un-subscribed with ID " + s.getServiceId();
		}
		return "Service deletion failed : Invalid Vendor ID";
	}

	@Override
	public String addSlot(Slots s) {
		
		 Session hs=sf.getCurrentSession();
		 hs.save(s);
		return "Service registered successfully : ID "+s.getSlotId();
		
	}
	
	@Override
	public String removeSlot(int slotId) {
		Session hs = sf.getCurrentSession();
		Slots s = hs.get(Slots.class,slotId);
		if (s != null) {
			hs.delete(s);
			return "slot un-subscribed with ID " + s.getSlotId();
		}
		return "Slot deletion failed : Invalid Vendor ID";
	}
	

	

	@Override
	public List<Appointments> appointmetsList(String ownerName) {
	
		
		Shops s=getShopByOwnerName(ownerName);
		String jpql = "select a from Appointments a where shopId=:sid";
		List<Appointments> alist=new ArrayList<Appointments>();
		alist=sf.getCurrentSession().createQuery(jpql, Appointments.class).setParameter("sid",s.getShopId()).getResultList();
		
		return alist;
	}
	
	

	@Override
	public String updateService(int serviceId, Services s) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String UpdateSlot(int slotId, Slots s) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Shops getShopByOwnerName(String owName) {
		String jpql="select s from Shops s where ownerName=:owName";
		return sf.getCurrentSession().createQuery(jpql, Shops.class).setParameter("owName",owName).getSingleResult();
	}

	@Override
	public List<Services> getServiceList(String ownerName) {
		Shops s=getShopByOwnerName(ownerName);
		String jpql = "select s from Services s where shopId=:sid";
		List<Services> slist=new ArrayList<Services>();
		slist=sf.getCurrentSession().createQuery(jpql,Services.class).setParameter("sid",s.getShopId()).getResultList();
		return slist;
	}
	@Override
	public List<Slots> getSlotsList(String ownerName) {
		Shops s=getShopByOwnerName(ownerName);
		String jpql = "select s from Slots s where shopId=:sid";
		List<Slots> slist=new ArrayList<Slots>();
		slist=sf.getCurrentSession().createQuery(jpql,Slots.class).setParameter("sid",s.getShopId()).getResultList();
		return slist;
	}

	@Override
	public Services getServicesByServiceId(int serviceId) {
		
		String jpql="select s from Services s where s.serviceId=:serviceid";
		return sf.getCurrentSession().createQuery(jpql,Services.class).setParameter("serviceid",serviceId).getSingleResult();
	
	}


	@Override
	public Slots getSlotBySlotsId(int slotId) {
		
		
		String jpql="select s from Slots s where s.slotId=:slotid";
		return sf.getCurrentSession().createQuery(jpql,Slots.class).setParameter("slotid",slotId).getSingleResult();
	}

	@Override
	public String updateService(Services s) {
		Session hs = sf.getCurrentSession();
		hs.update(s);
		return "Service Updated successfully : ID "+s.getServiceId();
		
	}

	@Override
	public String updateSlot(Slots s) {
		Session hs = sf.getCurrentSession();
		hs.update(s);
		return "slot Updated successfully : ID "+s.getSlotId();
		
		
	}

}
