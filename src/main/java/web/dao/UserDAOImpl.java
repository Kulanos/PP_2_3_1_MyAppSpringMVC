package web.dao;


import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.model.User;


import java.util.List;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO{

    private final EntityManager entityManager;

    @Autowired
    public UserDAOImpl(EntityManagerFactory entityManagerFactory) {
        this.entityManager = entityManagerFactory.createEntityManager();
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> allUsers() {
        return entityManager.createQuery("FROM User", User.class).getResultList();
    }

    @Override
    public void add(User user) {
        entityManager.persist(user);
    }

    @Override
    public void delete(User user) {
        entityManager.remove(entityManager.contains(user) ? user : entityManager.merge(user));
    }

    @Override
    public void edit(User user) {
        entityManager.merge(user);
    }

    @Override
    @Transactional(readOnly = true)
    public User getById(Long id) {
        return entityManager.find(User.class, id);
    }


}
