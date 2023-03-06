package java2;

import java.util.List;

public class ArrayList {
    public static void main(String[] args) {
        List<String> TuanKhanh = new java.util.ArrayList<>();

        TuanKhanh.add("Thu 2");
        TuanKhanh.add("Thu 3");
        TuanKhanh.add("Thu 4");
        TuanKhanh.add("Thu 5");
        TuanKhanh.add("Thu 6");


        System.out.println(TuanKhanh);

        TuanKhanh.add(3,"Pham Tuan Khanh");

        List<String> Ptk = new java.util.ArrayList<>(TuanKhanh);

        List<String> Pham = new java.util.ArrayList<>();

        Pham.add("Thu 7");
        Pham.add("Chu Nhat");

        Ptk.addAll(Pham);

        System.out.println(Ptk);



    }
}
