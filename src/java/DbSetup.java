public class DbSetup {

    // running this file creates the PRODUCT and USER tables
    // and adds a test entry in each table
    public static void main(String[] args) {

        ProductDB pDB = new ProductDB();
//        pDB.createProductTable();

        Product testProduct = new Product(6, "test",0, "test", "test", 0.0f, "test.jpg");
        pDB.addProduct(testProduct); 

//        UserDB uDB = new UserDB();
//       uDB.createUserTable();
//
//        User testUser = new User("joe", "C", "blank@uncc.edu",
//                "stuff", "123 LANE", "charlotte", "NC",
//                "28222", "USA");
//        uDB.addUser(testUser);

    }

}
