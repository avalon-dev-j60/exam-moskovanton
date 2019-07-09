package ru.avalon.blog.entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ru.avalon.blog.entities.Publication;
import ru.avalon.blog.entities.Reviews;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-07-09T18:08:42")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile ListAttribute<User, Reviews> reviews;
    public static volatile SingularAttribute<User, Long> id;
    public static volatile SingularAttribute<User, String> email;
    public static volatile ListAttribute<User, Publication> publications;

}