package gormpractiseproject

class Individual implements Serializable{
    String name
    String email

    IndividualAddress homeAddress
    IndividualAddress officeAddress

    static constraints = {
    }
}
