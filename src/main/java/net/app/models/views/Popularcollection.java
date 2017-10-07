package net.app.models.views;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
public class Popularcollection {
    private String nameService;
    private long countId;
    private String fio;
    private String discount;
    private String sex;
    private Date dateBirth;
    private String addr;
    private Integer summDiscount;
    @Id
    private int id;
    private Timestamp datePost;
    private Timestamp dateGet;
    private String description;
    private Integer idTypecosmetic;
    private Integer idStore;
    private Integer idAgency;
    private String name;

    @Basic
    @Column(name = "name-service", nullable = true, length = 255)
    public String getNameService() {
        return nameService;
    }

    public void setNameService(String nameService) {
        this.nameService = nameService;
    }

    @Basic
    @Column(name = "Count-id", nullable = false)
    public long getCountId() {
        return countId;
    }

    public void setCountId(long countId) {
        this.countId = countId;
    }

    @Basic
    @Column(name = "FIO", nullable = true, length = 255)
    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    @Basic
    @Column(name = "discount", nullable = true, length = 255)
    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    @Basic
    @Column(name = "sex", nullable = true, length = 255)
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "date_birth", nullable = true)
    public Date getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(Date dateBirth) {
        this.dateBirth = dateBirth;
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
    @Column(name = "summ_discount", nullable = true)
    public Integer getSummDiscount() {
        return summDiscount;
    }

    public void setSummDiscount(Integer summDiscount) {
        this.summDiscount = summDiscount;
    }

    @Basic
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "date_post", nullable = true)
    public Timestamp getDatePost() {
        return datePost;
    }

    public void setDatePost(Timestamp datePost) {
        this.datePost = datePost;
    }

    @Basic
    @Column(name = "date_get", nullable = true)
    public Timestamp getDateGet() {
        return dateGet;
    }

    public void setDateGet(Timestamp dateGet) {
        this.dateGet = dateGet;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 255)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "id_typecosmetic", nullable = true)
    public Integer getIdTypecosmetic() {
        return idTypecosmetic;
    }

    public void setIdTypecosmetic(Integer idTypecosmetic) {
        this.idTypecosmetic = idTypecosmetic;
    }

    @Basic
    @Column(name = "id_store", nullable = true)
    public Integer getIdStore() {
        return idStore;
    }

    public void setIdStore(Integer idStore) {
        this.idStore = idStore;
    }

    @Basic
    @Column(name = "id_agency", nullable = true)
    public Integer getIdAgency() {
        return idAgency;
    }

    public void setIdAgency(Integer idAgency) {
        this.idAgency = idAgency;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Popularcollection that = (Popularcollection) o;

        if (countId != that.countId) return false;
        if (id != that.id) return false;
        if (nameService != null ? !nameService.equals(that.nameService) : that.nameService != null) return false;
        if (fio != null ? !fio.equals(that.fio) : that.fio != null) return false;
        if (discount != null ? !discount.equals(that.discount) : that.discount != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;
        if (dateBirth != null ? !dateBirth.equals(that.dateBirth) : that.dateBirth != null) return false;
        if (addr != null ? !addr.equals(that.addr) : that.addr != null) return false;
        if (summDiscount != null ? !summDiscount.equals(that.summDiscount) : that.summDiscount != null) return false;
        if (datePost != null ? !datePost.equals(that.datePost) : that.datePost != null) return false;
        if (dateGet != null ? !dateGet.equals(that.dateGet) : that.dateGet != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (idTypecosmetic != null ? !idTypecosmetic.equals(that.idTypecosmetic) : that.idTypecosmetic != null)
            return false;
        if (idStore != null ? !idStore.equals(that.idStore) : that.idStore != null) return false;
        if (idAgency != null ? !idAgency.equals(that.idAgency) : that.idAgency != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = nameService != null ? nameService.hashCode() : 0;
        result = 31 * result + (int) (countId ^ (countId >>> 32));
        result = 31 * result + (fio != null ? fio.hashCode() : 0);
        result = 31 * result + (discount != null ? discount.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (dateBirth != null ? dateBirth.hashCode() : 0);
        result = 31 * result + (addr != null ? addr.hashCode() : 0);
        result = 31 * result + (summDiscount != null ? summDiscount.hashCode() : 0);
        result = 31 * result + id;
        result = 31 * result + (datePost != null ? datePost.hashCode() : 0);
        result = 31 * result + (dateGet != null ? dateGet.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (idTypecosmetic != null ? idTypecosmetic.hashCode() : 0);
        result = 31 * result + (idStore != null ? idStore.hashCode() : 0);
        result = 31 * result + (idAgency != null ? idAgency.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }
}
