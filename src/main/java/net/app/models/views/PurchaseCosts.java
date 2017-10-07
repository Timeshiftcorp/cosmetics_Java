package net.app.models.views;



import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "purchase costs", schema = "cosmetics")
public class PurchaseCosts {
    @Id
    private int servicesId;
    private String name;
    private Integer price;

    private int cardId;
    private Integer idBuyer;
    private Integer cardIdStore;
    private Integer idService;
    private Timestamp datePost;
    private Timestamp dateGet;
    private String description;
    private Integer idTypecosmetic;

    private Integer idStore;
    private Integer idAgency;
    private Integer id;


    @Column(name = "services_id", nullable = false)
    public int getServicesId() {
        return servicesId;
    }

    public void setServicesId(int servicesId) {
        this.servicesId = servicesId;
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

    @Basic
    @Column(name = "card_id", nullable = false)
    public int getCardId() {
        return cardId;
    }

    public void setCardId(int cardId) {
        this.cardId = cardId;
    }

    @Basic
    @Column(name = "id_buyer", nullable = true)
    public Integer getIdBuyer() {
        return idBuyer;
    }

    public void setIdBuyer(Integer idBuyer) {
        this.idBuyer = idBuyer;
    }

    @Basic
    @Column(name = "card_id_store", nullable = true)
    public Integer getCardIdStore() {
        return cardIdStore;
    }

    public void setCardIdStore(Integer cardIdStore) {
        this.cardIdStore = cardIdStore;
    }

    @Basic
    @Column(name = "id_service", nullable = true)
    public Integer getIdService() {
        return idService;
    }

    public void setIdService(Integer idService) {
        this.idService = idService;
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

        PurchaseCosts that = (PurchaseCosts) o;

        if (servicesId != that.servicesId) return false;
        if (cardId != that.cardId) return false;
        if (id != that.id) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (idBuyer != null ? !idBuyer.equals(that.idBuyer) : that.idBuyer != null) return false;
        if (cardIdStore != null ? !cardIdStore.equals(that.cardIdStore) : that.cardIdStore != null) return false;
        if (idService != null ? !idService.equals(that.idService) : that.idService != null) return false;
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
        int result = servicesId;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + cardId;
        result = 31 * result + (idBuyer != null ? idBuyer.hashCode() : 0);
        result = 31 * result + (cardIdStore != null ? cardIdStore.hashCode() : 0);
        result = 31 * result + (idService != null ? idService.hashCode() : 0);
        result = 31 * result + id;
        result = 31 * result + (datePost != null ? datePost.hashCode() : 0);
        result = 31 * result + (dateGet != null ? dateGet.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (idTypecosmetic != null ? idTypecosmetic.hashCode() : 0);
        result = 31 * result + (idStore != null ? idStore.hashCode() : 0);
        result = 31 * result + (idAgency != null ? idAgency.hashCode() : 0);
        return result;
    }

}
