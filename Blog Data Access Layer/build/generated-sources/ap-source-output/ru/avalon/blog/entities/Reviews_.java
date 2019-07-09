package ru.avalon.blog.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import ru.avalon.blog.entities.User;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-07-09T18:09:54")
@StaticMetamodel(Reviews.class)
public class Reviews_ { 

    public static volatile SingularAttribute<Reviews, Date> createdAt;
    public static volatile SingularAttribute<Reviews, User> author;
    public static volatile SingularAttribute<Reviews, Long> id;
    public static volatile SingularAttribute<Reviews, String> title;
    public static volatile SingularAttribute<Reviews, String> content;

}