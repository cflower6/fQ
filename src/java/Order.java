
import java.util.List;

/**
 *
 * @author chris
 */
public class Order {
    private int orderNumber;
    private String date;
    private String user;
    private List<OrderItem> oItem;
    private double taxRate;
    private double totalCost;
    private boolean paid;
}
