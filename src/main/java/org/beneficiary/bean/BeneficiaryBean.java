package org.beneficiary.bean;

import org.apache.log4j.Logger;
import org.beneficiary.dao.BeneficiaryDao;
import org.beneficiary.model.Beneficiary;
import org.beneficiary.wrapper.BeneficiaryWrapper;
import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */

@Stateless
@Remote
@TransactionManagement(TransactionManagementType.CONTAINER)
public class BeneficiaryBean implements BeneficiaryBeanI{

Logger log = Logger.getLogger(getClass());
    @PersistenceContext
    private EntityManager em;

    @Inject
    private BeneficiaryDao beneficiaryDao;

    @PostConstruct
    private void init() {
        beneficiaryDao.setEm(em);
    }

    /**
     * @see BeneficiaryBeanI#save(Beneficiary)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Beneficiary save(Beneficiary beneficiary) throws Exception {
        return beneficiaryDao.save(beneficiary);
    }

    /**
     * @see BeneficiaryBeanI#load(Long)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Beneficiary load(Long id) throws Exception {
        return beneficiaryDao.findById(id);

    }

    /**
     * @see BeneficiaryBeanI#delete(Long[])
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public boolean delete(Long[] ids) throws Exception {
        beneficiaryDao.delete(ids);
        return true;
    }

    /**
     * @see BeneficiaryBeanI#list(Long, Long, Beneficiary)
     */
    @Override
    public BeneficiaryWrapper list(Long start, Long limit, Beneficiary filterBy) {
        int startInt = start.intValue();
        int limitInt = limit.intValue();
       log.info(startInt +"  between "+ limitInt);
        BeneficiaryWrapper wrapper = new BeneficiaryWrapper();
        Criterion crit = Restrictions.isNotNull("id");
        List<Beneficiary> ben =  beneficiaryDao.findByCriteria(startInt, limitInt, crit);
        wrapper.setList(ben);
        wrapper.setCount(ben.size());

        return wrapper;
    }
    /**
     * @see BeneficiaryBeanI#delete(Long[])
     */

    @Override
    public void delete(Long id) throws Exception {
        beneficiaryDao.deleteById(id);

    }

}
