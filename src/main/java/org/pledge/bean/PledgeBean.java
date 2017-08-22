package org.pledge.bean;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.pledge.dao.PledgeDaoI;
import org.pledge.model.Pledge;
import org.pledge.wrapper.PledgeWrapper;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by ndikraxx on 10/9/16.
 */
@Stateless
@Remote
@TransactionManagement(TransactionManagementType.CONTAINER)
public class PledgeBean implements PledgeBeanI {

    @PersistenceContext
    private EntityManager em;

    @Inject
    private PledgeDaoI pledgeDao;

    @PostConstruct
    private void init() {
        pledgeDao.setEm(em);
    }

    /**
     * @see PledgeBeanI#save(Pledge)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Pledge save(Pledge pledge) throws Exception {
        return pledgeDao.save(pledge);
    }

    /**
     * @see PledgeBeanI#load(Long)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Pledge load(Long id) throws Exception {
        return pledgeDao.findById(id);

    }

    /**
     * @see PledgeBeanI#delete(Long[])
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public boolean delete(Long[] ids) throws Exception {
        //pledgeDao.delete(ids);
        return true;
    }
    /**
     * @see PledgeBeanI#delete(Long)
     */
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public void delete(Long id) throws Exception {
        pledgeDao.deleteById(id);

    }

    /**
     * @see PledgeBeanI#list(Long, Long, Pledge)
     */
    @Override
    public PledgeWrapper list(Long start, Long limit, Pledge filterBy) {
        int startInt = start.intValue();
        int limitInt = limit.intValue();

        PledgeWrapper wrapper = new PledgeWrapper();
        Criterion crit = Restrictions.isNotNull("id");
        List<Pledge> pledges =  pledgeDao.findByCriteria(startInt, limitInt, crit);
        wrapper.setList(pledges);
        wrapper.setCount(pledges.size());

        return wrapper;
    }
}
