package net.app.models.mods;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Store {
    private int id;
    private String name;
    private String addr;
    private Collection<Collections> collectionsById;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Store store = (Store) o;

        if (id != store.id) return false;
        if (name != null ? !name.equals(store.name) : store.name != null) return false;
        if (addr != null ? !addr.equals(store.addr) : store.addr != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (addr != null ? addr.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "storeByIdStore")
    public Collection<Collections> getCollectionsById() {
        return collectionsById;
    }

    public void setCollectionsById(Collection<Collections> collectionsById) {
        this.collectionsById = collectionsById;
    }
}
