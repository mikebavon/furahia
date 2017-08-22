package org.pledge.bean;

import org.pledge.model.Pledge;
import org.pledge.wrapper.PledgeWrapper;

/**
 * Created by ndikraxx on 10/9/16.
 */
public interface PledgeBeanI {

    /**
     *
     * @param pledge
     * @return
     * @throws Exception
     */
    Pledge save(Pledge pledge) throws Exception;

    /**
     *
     * @param id
     * @return
     * @throws Exception
     */
    Pledge load(Long id) throws Exception;

    /**
     *
     * @param ids
     * @return
     * @throws Exception
     */
    boolean delete(Long[] ids) throws Exception;

    /**
     *
     * @param start
     * @param limit
     * @param filterBy
     * @return
     */

    /**
     *
     * @param id
     * @throws Exception
     */
    void delete(Long id) throws Exception;

    PledgeWrapper list(Long start, Long limit, Pledge filterBy);

}
