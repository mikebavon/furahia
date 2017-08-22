package org.donor.bean;

import org.donor.model.Donor;
import org.donor.wrapper.DonorWrapper;

import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */
public interface DonorBeanI  {

    /**
     *
     * @param donor
     * @return
     * @throws Exception
     */
    Donor save(Donor donor) throws Exception;

    /**
     *
     * @param id
     * @return
     * @throws Exception
     */
    Donor load(Long id) throws Exception;

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
    DonorWrapper list(Long start, Long limit, Donor filterBy);

    /**
     *
     * @param id
     * @return
     */
    DonorWrapper authenticateUser(Long id);


}
