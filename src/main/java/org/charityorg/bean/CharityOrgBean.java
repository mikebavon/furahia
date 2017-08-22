package org.charityorg.bean;

import org.charityorg.dao.CharityOrgDao;
import org.charityorg.model.CharityOrg;
import org.charityorg.wrapper.CharityOrgWrapper;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

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
public class CharityOrgBean implements CharityOrgBeanI {

    @PersistenceContext
    private EntityManager em;

    @Inject
    private CharityOrgDao charityOrgDao;

    @PostConstruct
    private void init() {
        charityOrgDao.setEm(em);
    }

    /**
     * @see CharityOrgBeanI#save(CharityOrg)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public CharityOrg save(CharityOrg charityOrg) throws Exception {
        return charityOrgDao.save(charityOrg);
    }

    /**
     * @see CharityOrgBeanI#load(Long)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public CharityOrg load(Long id) throws Exception {
        return charityOrgDao.findById(id);

    }

    /**
     * @see CharityOrgBeanI#delete(Long[])
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public boolean delete(Long[] ids) throws Exception {
        charityOrgDao.delete(ids);
        return true;
    }

    /**
     * @see CharityOrgBeanI#list(Long, Long, CharityOrg)
     */
    @Override
    public CharityOrgWrapper list(Long start, Long limit, CharityOrg filterBy) {
        CharityOrgWrapper wrapper = new CharityOrgWrapper();
        int startInt = start.intValue();
        int limitInt = limit.intValue();
        Criterion criterion = Restrictions.isNotNull("id");
        wrapper.setList(charityOrgDao.findByCriteria(startInt, limitInt, criterion));
        wrapper.setCount(wrapper.getList().size());

        return wrapper;
    }
    /**
     * @see CharityOrgBeanI#delete(Long[])
     */

    @Override
    public void delete(Long id) throws Exception {
        charityOrgDao.deleteById(id);

    }


}
