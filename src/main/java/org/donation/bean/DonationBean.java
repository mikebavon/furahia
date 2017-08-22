package org.donation.bean;

import org.donation.dao.DonationDao;
import org.donation.model.Donation;
import org.donation.wrapper.DonationWrapper;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by fastlane on 8/4/16.
 */

@Stateless
@Remote
@TransactionManagement(TransactionManagementType.CONTAINER)
public class DonationBean implements DonationBeanI {

    @PersistenceContext
    private EntityManager em;

    @Inject
    private DonationDao donationDao;

    @PostConstruct
    private void init() {
        donationDao.setEm(em);
    }

    /**
     * @see DonationBeanI#save(Donation)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Donation save(Donation donation) throws Exception {
        return donationDao.save(donation);
    }

    /**
     * @see DonationBeanI#load(Long)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Donation load(Long id) throws Exception {
        return donationDao.findById(id);

    }

    /**
     * @see DonationBeanI#delete(Long[])
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public boolean delete(Long[] ids) throws Exception {
        donationDao.delete(ids);
        return true;
    }

    /**
     * @see DonationBeanI#list(Long, Long, Donation)
     */
    @Override
    public DonationWrapper list(Long start, Long limit, Donation filterBy) {
        DonationWrapper wrapper = new DonationWrapper();
        //wrapper.setList(donationDao.find(start, limit, filterBy));
        wrapper.setCount(wrapper.getList().size());

        return wrapper;
    }

}
