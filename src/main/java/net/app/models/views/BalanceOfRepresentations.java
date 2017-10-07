package net.app.models.views;

import javax.persistence.*;

@Entity
@Table(name = "balance of representations", schema = "cosmetics")
public class BalanceOfRepresentations {
    private String name;
    private Long Sum;
    private Long price;
    private Integer id;

    @Id
    @Column(name = "id")
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
    @Column(name = "Sum", nullable = true, precision = 0)
    public Long getSum() {
        return Sum;
    }

    public void setSum(Long sum) {
        this.Sum = sum;
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

        BalanceOfRepresentations that = (BalanceOfRepresentations) o;

        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (Sum != null ? !Sum.equals(that.Sum) : that.Sum != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (Sum != null ? Sum.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        return result;
    }
}
