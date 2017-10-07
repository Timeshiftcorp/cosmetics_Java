package net.app.models.mods;

import javax.persistence.*;

@Entity
@Table(name = "empl_post", schema = "cosmetics", catalog = "")
public class EmplPost {
    private int id;
    private int idPost;
    private int idEmpl;
    private Costs costsByIdPost;
    private Agency agencyByIdEmpl;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "id_post", nullable = false,insertable = false,updatable = false)
    public int getIdPost() {
        return idPost;
    }

    public void setIdPost(int idPost) {
        this.idPost = idPost;
    }

    @Basic
    @Column(name = "id_empl", nullable = false,insertable = false,updatable = false)
    public int getIdEmpl() {
        return idEmpl;
    }

    public void setIdEmpl(int idEmpl) {
        this.idEmpl = idEmpl;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EmplPost emplPost = (EmplPost) o;

        if (id != emplPost.id) return false;
        if (idPost != emplPost.idPost) return false;
        if (idEmpl != emplPost.idEmpl) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + idPost;
        result = 31 * result + idEmpl;
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "id_post", referencedColumnName = "id", nullable = false,insertable = false,updatable = false)
    public Costs getCostsByIdPost() {
        return costsByIdPost;
    }

    public void setCostsByIdPost(Costs costsByIdPost) {
        this.costsByIdPost = costsByIdPost;
    }

    @ManyToOne
    @JoinColumn(name = "id_empl", referencedColumnName = "id", nullable = false,insertable = false,updatable = false)
    public Agency getAgencyByIdEmpl() {
        return agencyByIdEmpl;
    }

    public void setAgencyByIdEmpl(Agency agencyByIdEmpl) {
        this.agencyByIdEmpl = agencyByIdEmpl;
    }
}
