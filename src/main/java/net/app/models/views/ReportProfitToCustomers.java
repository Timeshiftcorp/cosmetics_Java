package net.app.models.views;

import javax.persistence.*;

@Entity
@Table(name = "report profit to customers", schema = "cosmetics", catalog = "")
public class ReportProfitToCustomers {
    private String fio;
    private Long price;
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
    @Column(name = "price", nullable = true, precision = 0)
    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ReportProfitToCustomers that = (ReportProfitToCustomers) o;

        if (fio != null ? !fio.equals(that.fio) : that.fio != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fio != null ? fio.hashCode() : 0;
        result = 31 * result + (price != null ? price.hashCode() : 0);
        return result;
    }
}
