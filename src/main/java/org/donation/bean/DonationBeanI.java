package org.donation.bean;

import org.donation.model.Donation;
import org.donation.wrapper.DonationWrapper;

/**
 * Created by fastlane on 8/4/16.
 */
public interface DonationBeanI{

    /**
     *
     * @param donation
     * @return
     * @throws Exception
     */
    Donation save(Donation donation) throws Exception;

    /**
     *
     * @param id
     * @return
     * @throws Exception
     */
    Donation load(Long id) throws Exception;

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
    DonationWrapper list(Long start, Long limit, Donation filterBy);

}
