package org.beneficiary.bean;

import org.beneficiary.model.Beneficiary;
import org.beneficiary.wrapper.BeneficiaryWrapper;

/**
 * Created by fastlane on 8/4/16.
 */
public interface BeneficiaryBeanI {

    /**
     *
     * @param beneficiary
     * @return
     * @throws Exception
     */
    Beneficiary save(Beneficiary beneficiary) throws Exception;

    /**
     *
     * @param id
     * @return
     * @throws Exception
     */
    Beneficiary load(Long id) throws Exception;

    /**
     *
     * @param ids
     * @return
     * @throws Exception
     */
    boolean delete(Long[] ids) throws Exception;

    /**
     *
     * @param id
     * @throws Exception
     */
    void delete(Long id) throws Exception;

    /**
     *
     * @param start
     * @param limit
     * @param filterBy
     * @return
     */
    BeneficiaryWrapper list(Long start, Long limit, Beneficiary filterBy);

}
