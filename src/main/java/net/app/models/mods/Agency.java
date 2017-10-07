package net.app.models.mods;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Collection;

@Entity
public class Agency {
    private int id;
    private String name;
    private String addr;
    private String phone;
    private Timestamp createDate;
    private Integer idCost;
    private Costs costsByIdCost;
    private Collection<Collections> collectionsById;
    private Collection<EmplPost> emplPostsById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "addr", nullable = true, length = 255)
    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 255)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "create_date", nullable = true)
    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
    }

    @Basic
    @Column(name = "id_cost", nullable = true)
    public Integer getIdCost() {
        return idCost;
    }

    public void setIdCost(Integer idCost) {
        this.idCost = idCost;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Agency agency = (Agency) o;

        if (id != agency.id) return false;
        if (name != null ? !name.equals(agency.name) : agency.name != null) return false;
        if (addr != null ? !addr.equals(agency.addr) : agency.addr != null) return false;
        if (phone != null ? !phone.equals(agency.phone) : agency.phone != null) return false;
        if (createDate != null ? !createDate.equals(agency.createDate) : agency.createDate != null) return false;
        if (idCost != null ? !idCost.equals(agency.idCost) : agency.idCost != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (addr != null ? addr.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (createDate != null ? createDate.hashCode() : 0);
        result = 31 * result + (idCost != null ? idCost.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "id_cost", referencedColumnName = "id",insertable = false,updatable = false)
    public Costs getCostsByIdCost() {
        return costsByIdCost;
    }

    public void setCostsByIdCost(Costs costsByIdCost) {
        this.costsByIdCost = costsByIdCost;
    }

    @OneToMany(mappedBy = "agencyByIdAgency")
    public Collection<Collections> getCollectionsById() {
        return collectionsById;
    }

    public void setCollectionsById(Collection<Collections> collectionsById) {
        this.collectionsById = collectionsById;
    }

    @OneToMany(mappedBy = "agencyByIdEmpl")
    public Collection<EmplPost> getEmplPostsById() {
        return emplPostsById;
    }

    public void setEmplPostsById(Collection<EmplPost> emplPostsById) {
        this.emplPostsById = emplPostsById;
    }
}
