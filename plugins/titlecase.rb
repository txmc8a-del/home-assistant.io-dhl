import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import java.awt.print.PrinterJob;

// 1. Find all available printers
PrintService[] services = PrintServiceLookup.lookupPrintServices(null, null);
PrintService myPrinter = null;

// 2. Find the one matching your network IP or name
for (PrintService service : services) {
    if (service.getName().contains("192.168.2.20")) {
        myPrinter = service;
        break;
    }
}

if (myPrinter != null) {
    PrinterJob job = PrinterJob.getPrinterJob();
    job.setPrintService(myPrinter); // Target the specific printer
    try {
        job.print();
        System.out.println("Print job sent to 192.168.2.20");
    } catch (Exception e) {
        e.printStackTrace();
    }
} else {
    System.out.println("Printer at 192.168.2.20 not found. Check network connection.");
}
