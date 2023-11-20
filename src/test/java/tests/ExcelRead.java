package tests;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class ExcelRead {


    @Test
    public void read_from_excel_file() throws IOException {


        FileInputStream fileInputStream = new FileInputStream("SampleData.xlsx");
        XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
        XSSFSheet sheet = workbook.getSheet("Employees");


        System.out.println(sheet.getPhysicalNumberOfRows());
        System.out.println(sheet.getLastRowNum());

        for (int i = 0; i < sheet.getPhysicalNumberOfRows(); i++) {

            if (sheet.getRow(i).getCell(0).toString().equals("Mary")) {
                System.out.println(sheet.getRow(i).getCell(2));
            }

        }






    }

}
