package org.charityorg.bean;

import org.charityorg.model.CharityOrg;
import org.charityorg.wrapper.CharityOrgWrapper;

/**
 * Created by fastlane on 8/4/16.
 */
public interface CharityOrgBeanI{

    /**
     *
     * @param charityOrg
     * @return
     * @throws Exception
     */
    CharityOrg save(CharityOrg charityOrg) throws Exception;

    /**
     *
     * @param id
     * @return
     * @throws Exception
     */
    CharityOrg load(Long id) throws Exception;

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
     * @return
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
    CharityOrgWrapper list(Long start, Long limit, CharityOrg filterBy);

}