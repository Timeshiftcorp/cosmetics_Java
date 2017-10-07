package net.app.models.mods;

import net.app.models.User;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Date;

@Entity
public class Buyers {
    private int id;
    private String fio;
    private String discount;
    private String sex;
    @DateTimeFormat(pattern = "yyyy-dd-MM")
    private Date dateBirth;
    private String addr;
    private Integer summDiscount;
    private Integer kodUser;
    private User usersByKodUser;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    @Column(name = "date_birth", columnDefinition="DATE")
    @DateTimeFormat(pattern = "yyyy-dd-MM")
    public Date getDateBirth() {
        return dateBirth;
    }

    @Column(name = "date_birth", columnDefinition="DATE")
    @DateTimeFormat(pattern = "yyyy-dd-MM")
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
    @Column(name = "kod_user", nullable = true)
    public Integer getKodUser() {
        return kodUser;
    }

    public void setKodUser(Integer kodUser) {
        this.kodUser = kodUser;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Buyers buyers = (Buyers) o;

        if (id != buyers.id) return false;
        if (fio != null ? !fio.equals(buyers.fio) : buyers.fio != null) return false;
        if (discount != null ? !discount.equals(buyers.discount) : buyers.discount != null) return false;
        if (sex != null ? !sex.equals(buyers.sex) : buyers.sex != null) return false;
        if (dateBirth != null ? !dateBirth.equals(buyers.dateBirth) : buyers.dateBirth != null) return false;
        if (addr != null ? !addr.equals(buyers.addr) : buyers.addr != null) return false;
        if (summDiscount != null ? !summDiscount.equals(buyers.summDiscount) : buyers.summDiscount != null)
            return false;
        if (kodUser != null ? !kodUser.equals(buyers.kodUser) : buyers.kodUser != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (fio != null ? fio.hashCode() : 0);
        result = 31 * result + (discount != null ? discount.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (dateBirth != null ? dateBirth.hashCode() : 0);
        result = 31 * result + (addr != null ? addr.hashCode() : 0);
        result = 31 * result + (summDiscount != null ? summDiscount.hashCode() : 0);
        result = 31 * result + (kodUser != null ? kodUser.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "kod_user", referencedColumnName = "id",insertable = false,updatable = false)
    public User getUsersByKodUser() {
        return usersByKodUser;
    }

    public void setUsersByKodUser(User usersByKodUser) {
        this.usersByKodUser = usersByKodUser;
    }


}
