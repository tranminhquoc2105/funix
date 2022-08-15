/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quoctm.Date;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author SE130297
 */
public class fomatDate {
      public String fomatDate(String time) throws ParseException{
         SimpleDateFormat sf = new SimpleDateFormat("dd/MM/yyyy");
         Date date1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzzz yyyy").parse(time);
         String datefomat = sf.format(date1);
         return datefomat;
    }
}
