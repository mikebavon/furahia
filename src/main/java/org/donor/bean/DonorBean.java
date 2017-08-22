package org.donor.bean;

import org.apache.log4j.Logger;
import org.auth.model.UserAuth;
import org.donor.dao.DonorDao;
import org.donor.model.Donor;
import org.donor.wrapper.DonorWrapper;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */

@Stateless
@Remote
@TransactionManagement(TransactionManagementType.CONTAINER)
public class DonorBean implements DonorBeanI{
Logger log = Logger.getLogger(getClass());
    @PersistenceContext
    private EntityManager em;

    @Inject
    private DonorDao donorDao;

    @PostConstruct
    private void init() {
        donorDao.setEm(em);
    }

    /**
     * @see DonorBeanI#save(Donor)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Donor save(Donor donor) throws Exception {
        return donorDao.save(donor);
    }

    /**
     * @see DonorBeanI#load(Long)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Donor load(Long id) throws Exception {
        return donorDao.findById(id);

    }

    /**
     * @see DonorBeanI#delete(Long[])
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public boolean delete(Long[] ids) throws Exception {
        donorDao.delete(ids);
        return true;
    }

    /**
     * @see DonorBeanI#list(Long, Long, Donor)
     */
    @Override
    public DonorWrapper list(Long start, Long limit, Donor filterBy) {
        int startInt = start.intValue();
        int limitInt = limit.intValue();
        DonorWrapper wrapper = new DonorWrapper();

        Criterion criterion = Restrictions.isNotNull("id");
        wrapper.setList(donorDao.findByCriteria(startInt, limitInt, criterion));

        wrapper.setCount(wrapper.getList().size());
        return wrapper;
    }

    /**
     * @see DonorBeanI#authenticateUser(Long) )
     */

    @Override
    public DonorWrapper authenticateUser(Long id) {
        DonorWrapper wrapper = new DonorWrapper();
        int start =0, limit =0;
        Criterion criterion = Restrictions.eq("userAuth.id", id);
        wrapper.setList(donorDao.findByCriteria(start, limit,criterion));

       wrapper.setCount(donorDao.findByCriteria(start, limit,criterion).size());

        return wrapper;

    }
}
