package net.app.models.mods;

import javax.persistence.*;
import javax.validation.constraints.Null;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Base64;
import java.util.Collection;

@Entity
public class Collections {
    private int id;
    private Timestamp datePost;
    private Timestamp dateGet;
    private String description;
    private Integer idTypecosmetic;
    private Integer idStore;
    private Integer idAgency;
    private Collection<Card> cardsById;
    private TypeCosmetic typeCosmeticByIdTypecosmetic;
    private Store storeByIdStore;
    private Agency agencyByIdAgency;

    @Basic
    @Column(name = "image")
    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    private byte[] image;


    public String Encode () throws SQLException {
        if (getImage()== null)
            return "";
        String encode = Base64.getEncoder().encodeToString(getImage());

        return  new String(getImage(), StandardCharsets.UTF_8);
    }

    @Id
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Collections that = (Collections) o;

        if (id != that.id) return false;
        if (datePost != null ? !datePost.equals(that.datePost) : that.datePost != null) return false;
        if (dateGet != null ? !dateGet.equals(that.dateGet) : that.dateGet != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (idTypecosmetic != null ? !idTypecosmetic.equals(that.idTypecosmetic) : that.idTypecosmetic != null)
            return false;
        if (idStore != null ? !idStore.equals(that.idStore) : that.idStore != null) return false;
        if (idAgency != null ? !idAgency.equals(that.idAgency) : that.idAgency != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (datePost != null ? datePost.hashCode() : 0);
        result = 31 * result + (dateGet != null ? dateGet.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (idTypecosmetic != null ? idTypecosmetic.hashCode() : 0);
        result = 31 * result + (idStore != null ? idStore.hashCode() : 0);
        result = 31 * result + (idAgency != null ? idAgency.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "collectionsByIdStore")
    public Collection<Card> getCardsById() {
        return cardsById;
    }

    public void setCardsById(Collection<Card> cardsById) {
        this.cardsById = cardsById;
    }

    @ManyToOne
    @JoinColumn(name = "id_typecosmetic", referencedColumnName = "id",insertable = false,updatable = false)
    public TypeCosmetic getTypeCosmeticByIdTypecosmetic() {
        return typeCosmeticByIdTypecosmetic;
    }

    public void setTypeCosmeticByIdTypecosmetic(TypeCosmetic typeCosmeticByIdTypecosmetic) {
        this.typeCosmeticByIdTypecosmetic = typeCosmeticByIdTypecosmetic;
    }

    @ManyToOne
    @JoinColumn(name = "id_store", referencedColumnName = "id",insertable = false,updatable = false)
    public Store getStoreByIdStore() {
        return storeByIdStore;
    }

    public void setStoreByIdStore(Store storeByIdStore) {
        this.storeByIdStore = storeByIdStore;
    }

    @ManyToOne
    @JoinColumn(name = "id_agency", referencedColumnName = "id",insertable = false,updatable = false)
    public Agency getAgencyByIdAgency() {
        return agencyByIdAgency;
    }

    public void setAgencyByIdAgency(Agency agencyByIdAgency) {
        this.agencyByIdAgency = agencyByIdAgency;
    }
}
