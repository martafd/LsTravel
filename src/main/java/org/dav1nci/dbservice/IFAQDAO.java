package org.dav1nci.dbservice;


import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by dav1nci on 31.10.15.
 */
public interface IFAQDAO
{
    public List<FAQEntity> getContent();
}
