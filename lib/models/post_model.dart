// ignore_for_file: public_member_api_docs, sort_constructors_first

class Post {
  final String rasm;
  final int id;
  final String title;
  final String description;
  final String narx;
  final double population;
  final String privayted;

  Post(
    this.rasm,
    this.id,
    this.title,
    this.description,
    this.narx,
    this.population,
    this.privayted,
  );
}

class Posts {
  List<Post> _item = [
    Post(
        "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGNoYWlyfGVufDB8fDB8fHww",
        0,
        "Post 1",
        "Ichki dizayn g'oyalari, professional maslahatlar, uyingiz uchun ilhom! Bizga qo'shiling!",
        "Tekin",
        150,
        "Ochiq"),
  ];
  List<Post> get items {
    return _item;
  }
}
