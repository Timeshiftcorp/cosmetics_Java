package net.app.models.views;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
public class Buyerscollections {
    private String fio;
    private String discount;
    private String sex;
    private Date dateBirth;
    private String addr2;
    private Integer summDiscount;
    private Timestamp dateGet;
    private String name;
    private String addr;
    private String phone;
    private Timestamp createDate;
    @Id
    private int id;

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
    @Column(name = "addr2", nullable = true, length = 255)
    public String getAddr2() {
        return addr2;
    }

    public void setAddr2(String addr2) {
        this.addr2 = addr2;
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
    @Column(name = "date_get", nullable = true)
    public Timestamp getDateGet() {
        return dateGet;
    }

    public void setDateGet(Timestamp dateGet) {
        this.dateGet = dateGet;
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
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Buyerscollections that = (Buyerscollections) o;

        if (id != that.id) return false;
        if (fio != null ? !fio.equals(that.fio) : that.fio != null) return false;
        if (discount != null ? !discount.equals(that.discount) : that.discount != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;
        if (dateBirth != null ? !dateBirth.equals(that.dateBirth) : that.dateBirth != null) return false;
        if (addr2 != null ? !addr2.equals(that.addr2) : that.addr2 != null) return false;
        if (summDiscount != null ? !summDiscount.equals(that.summDiscount) : that.summDiscount != null) return false;
        if (dateGet != null ? !dateGet.equals(that.dateGet) : that.dateGet != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (addr != null ? !addr.equals(that.addr) : that.addr != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (createDate != null ? !createDate.equals(that.createDate) : that.createDate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fio != null ? fio.hashCode() : 0;
        result = 31 * result + (discount != null ? discount.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (dateBirth != null ? dateBirth.hashCode() : 0);
        result = 31 * result + (addr2 != null ? addr2.hashCode() : 0);
        result = 31 * result + (summDiscount != null ? summDiscount.hashCode() : 0);
        result = 31 * result + (dateGet != null ? dateGet.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (addr != null ? addr.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (createDate != null ? createDate.hashCode() : 0);
        result = 31 * result + id;
        return result;
    }
}
