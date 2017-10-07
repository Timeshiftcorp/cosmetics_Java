package net.app.models.mods;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Services {
    private int id;
    private String name;
    private Integer price;
    private Collection<CardService> cardServicesById;

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
    @Column(name = "price", nullable = true)
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Services services = (Services) o;

        if (id != services.id) return false;
        if (name != null ? !name.equals(services.name) : services.name != null) return false;
        if (price != null ? !price.equals(services.price) : services.price != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "servicesByIdService")
    public Collection<CardService> getCardServicesById() {
        return cardServicesById;
    }

    public void setCardServicesById(Collection<CardService> cardServicesById) {
        this.cardServicesById = cardServicesById;
    }
}
