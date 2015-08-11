package ppms.genericDao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.springframework.stereotype.Repository;

import ppms.domain.TbPoint;

/**
 * A data access object (DAO) providing persistence and search support for
 * TbPoint entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see ppms.domain.TbPoint
 * @author MyEclipse Persistence Tools
 */
@Repository
public class TbPointDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(TbPointDAO.class);
	// property constants
	public static final String ORGID = "orgid";
	public static final String ORGTYPE = "orgtype";
	public static final String EMPLOYEEPOINT = "employeepoint";
	public static final String EMPLOYEEPERFORMANCE = "employeeperformance";
	public static final String ORGPERFORMANCE = "orgperformance";
	public static final String REGULATEPOINT = "regulatepoint";
	public static final String RANKSEQ = "rankseq";
	public static final String ENCOURAGEMENTMONEY = "encouragementmoney";
	public static final String TAX = "tax";
	public static final String NETINCOME = "netincome";
	public static final String ORGLEVEL = "orglevel";
	public static final String BREACHDEDUCTPOINT = "breachdeductpoint";
	public static final String LASTPOINT = "lastpoint";
	public static final String DEDUCTTAX = "deducttax";
	public static final String CREATEDBY = "createdby";
	public static final String MODIFIEDBY = "modifiedby";

	public void save(TbPoint transientInstance) {
		log.debug("saving TbPoint instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TbPoint persistentInstance) {
		log.debug("deleting TbPoint instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TbPoint findById(java.lang.String id) {
		log.debug("getting TbPoint instance with id: " + id);
		try {
			TbPoint instance = (TbPoint) getSession().get(
					"ppms.domain.TbPoint", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TbPoint instance) {
		log.debug("finding TbPoint instance by example");
		try {
			List results = getSession().createCriteria("ppms.domain.TbPoint")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TbPoint instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TbPoint as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByOrgid(Object orgid) {
		return findByProperty(ORGID, orgid);
	}

	public List findByOrgtype(Object orgtype) {
		return findByProperty(ORGTYPE, orgtype);
	}

	public List findByEmployeepoint(Object employeepoint) {
		return findByProperty(EMPLOYEEPOINT, employeepoint);
	}

	public List findByEmployeeperformance(Object employeeperformance) {
		return findByProperty(EMPLOYEEPERFORMANCE, employeeperformance);
	}

	public List findByOrgperformance(Object orgperformance) {
		return findByProperty(ORGPERFORMANCE, orgperformance);
	}

	public List findByRegulatepoint(Object regulatepoint) {
		return findByProperty(REGULATEPOINT, regulatepoint);
	}

	public List findByRankseq(Object rankseq) {
		return findByProperty(RANKSEQ, rankseq);
	}

	public List findByEncouragementmoney(Object encouragementmoney) {
		return findByProperty(ENCOURAGEMENTMONEY, encouragementmoney);
	}

	public List findByTax(Object tax) {
		return findByProperty(TAX, tax);
	}

	public List findByNetincome(Object netincome) {
		return findByProperty(NETINCOME, netincome);
	}

	public List findByOrglevel(Object orglevel) {
		return findByProperty(ORGLEVEL, orglevel);
	}

	public List findByBreachdeductpoint(Object breachdeductpoint) {
		return findByProperty(BREACHDEDUCTPOINT, breachdeductpoint);
	}

	public List findByLastpoint(Object lastpoint) {
		return findByProperty(LASTPOINT, lastpoint);
	}

	public List findByDeducttax(Object deducttax) {
		return findByProperty(DEDUCTTAX, deducttax);
	}

	public List findByCreatedby(Object createdby) {
		return findByProperty(CREATEDBY, createdby);
	}

	public List findByModifiedby(Object modifiedby) {
		return findByProperty(MODIFIEDBY, modifiedby);
	}

	public List findAll() {
		log.debug("finding all TbPoint instances");
		try {
			String queryString = "from TbPoint";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TbPoint merge(TbPoint detachedInstance) {
		log.debug("merging TbPoint instance");
		try {
			TbPoint result = (TbPoint) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TbPoint instance) {
		log.debug("attaching dirty TbPoint instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TbPoint instance) {
		log.debug("attaching clean TbPoint instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}