package net.app.models.mods;

import javax.persistence.*;

@Entity
@Table(name = "card_service", schema = "cosmetics", catalog = "")
public class CardService {
    private Integer idCard;
    private Integer idService;
    private int id;
    private Card cardByIdCard;
    private Services servicesByIdService;

    @Basic
    @Column(name = "id_card", nullable = true)
    public Integer getIdCard() {
        return idCard;
    }

    public void setIdCard(Integer idCard) {
        this.idCard = idCard;
    }

    @Basic
    @Column(name = "id_service", nullable = true)
    public Integer getIdService() {
        return idService;
    }

    public void setIdService(Integer idService) {
        this.idService = idService;
    }

    @Id
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

        CardService that = (CardService) o;

        if (id != that.id) return false;
        if (idCard != null ? !idCard.equals(that.idCard) : that.idCard != null) return false;
        if (idService != null ? !idService.equals(that.idService) : that.idService != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idCard != null ? idCard.hashCode() : 0;
        result = 31 * result + (idService != null ? idService.hashCode() : 0);
        result = 31 * result + id;
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "id_card", referencedColumnName = "id",insertable = false,updatable = false)
    public Card getCardByIdCard() {
        return cardByIdCard;
    }

    public void setCardByIdCard(Card cardByIdCard) {
        this.cardByIdCard = cardByIdCard;
    }

    @ManyToOne
    @JoinColumn(name = "id_service", referencedColumnName = "id",insertable = false,updatable = false)
    public Services getServicesByIdService() {
        return servicesByIdService;
    }

    public void setServicesByIdService(Services servicesByIdService) {
        this.servicesByIdService = servicesByIdService;
    }
}
