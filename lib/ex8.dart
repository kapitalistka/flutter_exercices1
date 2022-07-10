//Создайте класс User, у которого есть поле email.
// Реализуйте два наследника данного класса AdminUser и GeneralUser.
// Реализуйте mixin над классом User, у которого будет метод getMailSystem,
// который возвращает значение из email, которое находится после @.
// Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru.
// Используйте данный миксин на AdminUser.
// Далее реализуйте класс UserManager<T extends User>, у которого будет храниться
// список пользователей и будут методы добавления или удаления их.
// Также в UserManager реализуйте метод, который выведет почту всех пользователей,
// однако если пользователь admin, будет выведено значение после @.
// Проверьте реализованные методы на практике.

void main() {
  UserManager manager = UserManager();
  final user1 = GeneralUser("email@email.com");
  manager.add(user1);
  manager.add(GeneralUser("emailemail.com"));
  manager.add(GeneralUser("em@ailemail@.com"));
  manager.add(AdminUser("emailemail@mail.com"));
  manager.printMails();
  manager.remove(user1);
  manager.printMails();
}

abstract class User {
  final String email;

  User(this.email);
}

class AdminUser extends User with MailHolder {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

mixin MailHolder on User {
  String getMailSystem() {
    List<String> parts = email.split('@');
    if (parts.length > 1) {
      return parts[1];
    } else {
      return "";
    }
  }
}

class UserManager<T extends User> {
  final List<User> _users = [];

  void add(User user) {
    _users.add(user);
  }

  bool remove(User user) {
    return _users.remove(user);
  }

  void printMails() {
    List<String> l = [];
    for (User user in _users) {
      l.add(user.getProcessedMail());
    }
    print(l);
  }
}

extension MailExt on User {
  String getProcessedMail() {
    if (this is AdminUser) {
      return (this as AdminUser).getMailSystem();
    } else {
      return email;
    }
  }
}