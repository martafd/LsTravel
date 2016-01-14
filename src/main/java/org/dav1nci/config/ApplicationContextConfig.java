package org.dav1nci.config;

import org.apache.commons.dbcp.BasicDataSource;
import org.dav1nci.dbservice.*;
import org.dav1nci.feed.CustomRssView;
import org.dav1nci.feed.FeedEntity;
import org.dav1nci.forum.CommentEntity;
import org.dav1nci.forum.ForumEntity;
import org.dav1nci.ticket.Ticket;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.view.BeanNameViewResolver;

import javax.sql.DataSource;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;

/**
 * Created by dav1nci on 01.11.15.
 */
@Configuration
@ComponentScan({"org.dav1nci"})
@EnableTransactionManagement
public class ApplicationContextConfig
{
    /*@Bean(name = "dataSource")
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/lstraveldb");
        dataSource.setUsername("postgres");
        dataSource.setPassword("1234");

        return dataSource;
    }*/

    @Bean
    public BasicDataSource dataSource() throws URISyntaxException {
        URI dbUri = new URI(System.getenv("DATABASE_URL"));

        String username = dbUri.getUserInfo().split(":")[0];
        String password = dbUri.getUserInfo().split(":")[1];
        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setUrl(dbUrl);
        basicDataSource.setUsername(username);
        basicDataSource.setPassword(password);

        return basicDataSource;
    }

    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {

        LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);

        sessionBuilder.addAnnotatedClasses(
                UserEntity.class,
                RulesEntity.class,
                FAQEntity.class,
                HomeEntity.class,
                ForumEntity.class,
                RoleEntity.class,
                CommentEntity.class,
                FeedEntity.class,
                Ticket.class);
        sessionBuilder.addProperties(getHibernateProperties());

        return sessionBuilder.buildSessionFactory();
    }

    private Properties getHibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.show_sql", "true");
        properties.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQL9Dialect");
        properties.put("hibernate.hbm2ddl.auto", "update");
        return properties;
    }

    @Autowired
    @Bean(name = "transactionManager")
    public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
    {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

        return transactionManager;
    }

    @Bean
    public BeanNameViewResolver getBeanNameViewResolver()
    {
        return new BeanNameViewResolver();
    }

    @Bean(name = "rssViewer")
    public CustomRssView getCustomRssView()
    {
        return new CustomRssView();
    }

}
