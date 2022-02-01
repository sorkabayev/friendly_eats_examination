class Elems{
  String image;
  String name;
  String adress;
  String prise;
  Elems(this.image, this.name, this.adress,this.prise);

  static List<Elems>elems = [
    Elems("asset/image/im_1.jpg",  "Dinner", "Uzbekistan", "\$120"),
    Elems("asset/image/im_2.jpg",  "steakhouse", "Sietl", "\$10"),
    Elems("asset/image/im_3.jpg",  "File hyper", "adress", "\$120"),
    Elems("asset/image/im_4.jpg",  "Deil Cious", "adress", "\$80"),
    Elems("asset/image/im_5.jpg",  "Deli Hyper", "adress", "\$120"),
    Elems("asset/image/im_7.jpg",  "Deli Ruebo", "adress", "\$90"),
    Elems("asset/image/im_8.jpg",  "name", "adress", "\$120"),
    Elems("asset/image/im_9.jpg",  "name", "adress", "\$20"),
    Elems("asset/image/im_10.jpg", "name", "adress", "\$90"),
    Elems("asset/image/im_11.jpg", "name", "adress", "\$120"),
    Elems("asset/image/im_12.jpg", "name", "adress", "\$30"),
  ];
}