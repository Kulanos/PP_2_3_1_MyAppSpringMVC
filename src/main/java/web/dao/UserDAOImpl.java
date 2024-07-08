package web.dao;

import web.model.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class UserDAOImpl implements UserDAO{

    private static final AtomicLong AUTO_ID = new AtomicLong(0);
    private static Map<Long, User> users = new HashMap<>();

    static {
        User user1 = new User();
        user1.setId(AUTO_ID.getAndIncrement());
        user1.setName("Zaur");
        user1.setSurname("Tregulov");
        user1.setAge(23);
        user1.setEmail("zaur@gmail.com");
        users.put(user1.getId(), user1); // Добавляем в коллекцию

        User user2 = new User();
        user2.setId(AUTO_ID.getAndIncrement());
        user2.setName("Oleg");
        user2.setSurname("Vlasov");
        user2.setAge(32);
        user2.setEmail("vlas@gmail.com");
        users.put(user2.getId(), user2); // Добавляем в коллекцию

        User user3 = new User();
        user3.setId(AUTO_ID.getAndIncrement());
        user3.setName("Irina");
        user3.setSurname("Sivay");
        user3.setAge(43);
        user3.setEmail("sivka@email.ru");
        users.put(user3.getId(), user3); // Добавляем в коллекцию
    }

    @Override
    public List<User> allUsers() {
        return new ArrayList<>(users.values());
    }

    @Override
    public void add(User user) {
        user.setId(AUTO_ID.getAndIncrement());
        users.put(user.getId(), user);
    }

    @Override
    public void delete(User user) {
        users.remove(user.getId());
    }

    @Override
    public void edit(User user) {
        users.put(user.getId(), user);
    }

    @Override
    public User getById(Long id) {
        return users.get(id);
    }
}
