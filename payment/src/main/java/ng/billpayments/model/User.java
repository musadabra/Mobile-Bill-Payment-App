package ng.billpayments.model;

import java.util.*;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {

    // USER ID PRIMARY KEY
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;
    private String password;
    private boolean enabled;

    //RELATIONSHIP MAPPING
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles = new HashSet<>();

    public Long getId() {
        return id;
    }

    // remaining getters and setters are not shown for brevity
}