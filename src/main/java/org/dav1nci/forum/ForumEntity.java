package org.dav1nci.forum;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by dav1nci on 04.11.15.
 */
@Entity
@Table(name = "forum")
public class ForumEntity {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;
    @Column(name = "title")
    private String title;
    @Column(name = "body")
    @Type(type = "text")
    private String body;
    @Column(name = "author")
    private String author;
    @Column(name = "date")
    private Date date;
    @Column(name = "rating")
    private int rating;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @OrderBy("date")
    @JoinTable(name = "forum_comments", joinColumns = { @JoinColumn(name = "forum_id") }, inverseJoinColumns = { @JoinColumn(name = "comment_id") })
    private Set<CommentEntity> comments = new HashSet<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public Set<CommentEntity> getComments() {
        return comments;
    }

    public void setComments(Set<CommentEntity> comments) {
        this.comments = comments;
    }
}
