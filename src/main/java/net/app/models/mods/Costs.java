package net.app.models.mods;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Collection;

@Entity
public class Costs {
    private int id;
    private Timestamp date;
    private String name;
    private Integer summ;
    private Collection<Agency> agenciesById;
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
    @Column(name = "date", nullable = true)
    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
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
    @Column(name = "summ", nullable = true)
    public Integer getSumm() {
        return summ;
    }

    public void setSumm(Integer summ) {
        this.summ = summ;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Costs costs = (Costs) o;

        if (id != costs.id) return false;
        if (date != null ? !date.equals(costs.date) : costs.date != null) return false;
        if (name != null ? !name.equals(costs.name) : costs.name != null) return false;
        if (summ != null ? !summ.equals(costs.summ) : costs.summ != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (summ != null ? summ.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "costsByIdCost")
    public Collection<Agency> getAgenciesById() {
        return agenciesById;
    }

    public void setAgenciesById(Collection<Agency> agenciesById) {
        this.agenciesById = agenciesById;
    }

    @OneToMany(mappedBy = "costsByIdPost")
    public Collection<EmplPost> getEmplPostsById() {
        return emplPostsById;
    }

    public void setEmplPostsById(Collection<EmplPost> emplPostsById) {
        this.emplPostsById = emplPostsById;
    }
}
