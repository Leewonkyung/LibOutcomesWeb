package com.hansung.liboutcomes.servlet.reference;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.SampleDAO;
import com.hansung.liboutcomes.vo.SampleVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/*
 * 논문 · 보고서 서블릿
 */
@WebServlet("/ReferenceReport")
public class ReferenceReportServlet extends HttpServlet {
	
   private static final long serialVersionUID = 1L;
   private static List<SampleVO> list = new ArrayList<SampleVO>();
   
   public class User_Data{
	   String name;
	   int n_000 = 0;
	   int n_100 = 0;
	   int n_200 = 0;
	   int n_300 = 0;
	   int n_400 = 0;
	   int n_500 = 0;
	   int n_600 = 0;
	   int n_700 = 0;
	   int n_800 = 0;
	   int n_900 = 0;
	   
	   User_Data(String name){
		   this.name = name;
	   }
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp)
         throws ServletException, IOException {
      String saveDir = "C:/Users/DhKim/workspace/CSV_upload/WebContent/WEB-INF/csvupload";
      int maxSize = 1024*1024*10; //10메가
      String encType="EUC-KR"; //파일타입
      resp.setContentType("text/html;charset=EUC-KR");
      PrintWriter out = resp.getWriter();
      ArrayList<SampleVO> list = new ArrayList<SampleVO>();
      
      //필드들을 담을 ArrayList
      //ArrayList<String> l_Author = new ArrayList<String>();
      
      //각 필드의 위치를 담을 인덱스
      int index_Transfer_user_key = 0;
      int index_Loan_type_code = 0;
      int index_Return_type_code = 0;
      int index_loan_date = 0;
      int index_Return_plan_Date = 0;
      int index_Class_no = 0;
      int index_Manage_code = 0;
      int index_Reg_code = 0;
      int index_Reg_no = 0;
      int index_title = 0;
      int index_User_class_code = 0;
      int index_User_position_code = 0;
      int index_L_DEVICE = 0;
      int index_R_DEVICE = 0;
      
      boolean success = false;
      
      //SampleDAO sampledao = new SampleDAO();
      //SampleVO samplevo = new SampleVO();
      
      //유저 데이터 초기화
      String[] search_User = {"BR0155642","BR0009997","BR0155642"};
      ArrayList<User_Data> userData_List = new ArrayList<User_Data>();
      for(int k=0;k<search_User.length;k++){
    	userData_List.add(new User_Data(search_User[k]));
      }
      
      try{
         MultipartRequest multipartRequest =  new MultipartRequest(req, saveDir, maxSize, encType, new DefaultFileRenamePolicy());
         Enumeration enFiles = multipartRequest.getFileNames();
         while(enFiles.hasMoreElements()){
            String tsObjectName = (String)enFiles.nextElement();
            File file = multipartRequest.getFile(tsObjectName);
            
            if(file != null && file.length()>0){
               FileInputStream toFileInputStream = new FileInputStream(file);
               InputStreamReader toInputStreamReader = new InputStreamReader(toFileInputStream, "EUC-KR");
               BufferedReader toBufferedReader = new BufferedReader(toInputStreamReader);
               
               try{
                  String tsRecordLine = "";
                  String[] taRecord; //split한 데이터를 받아놓을 배열
                  int tnRecordIndex = 0;
                  
                  //tsRecordLine은 csv 파일을 한줄 씩 가져와서 읽는 역할을 한다.
                  while((tsRecordLine = toBufferedReader.readLine())!=null){
                	 //우선 원하는 필드명을 계속해서 가져옴
                	  System.out.println(tsRecordLine);
                	 taRecord = tsRecordLine.split(",");
                	 if(tnRecordIndex == 0){ 
                    	 for(int i=0;i<taRecord.length;i++){
                    		 switch(taRecord[i]){
                    		 	case "Transfer_USER_KEY" : index_Transfer_user_key = i;break;
                    		 	case "LOAN_TYPE_CODE" : index_Loan_type_code = i; break;
                    		 	case "RETURN_TYPE_CODE" : index_Return_type_code = i; break;
                    		 	case "LOAN_DATE" : index_loan_date = i; break;
                    		 	case "RETURN_PLAN_DATE" : index_Return_plan_Date = i; break;
                    		 	case "CLASS_NO" : index_Class_no = i; break;
                    		 	case "MANAGE_CODE" : index_Manage_code = i; break;
                    		 	case "REG_CODE" : index_Reg_code = i; break;
                    		 	case "REG_NO" : index_Reg_no = i; break;
                    		 	case "TITLE": index_title = i; break;
	                    		case "USER_CLASS_CODE" : index_User_class_code = i; break;
	                    		case "USER_POSITION_CODE" : index_User_position_code = i; break;
	                    		case "L_DEVICE" : index_L_DEVICE = i; break;
	                    		case "R_DEVICE" : index_R_DEVICE = i; break;
                    		 }
                    	 }
                    	 success = true;
                    	 tnRecordIndex++;
                    	 continue;
                     }
                	 tnRecordIndex++;
                	 //if(tnRecordIndex == 1) continue;
                	 //사용자 별 데이터 조회
                	 for(int j=0;j<userData_List.size();j++){
                		 String user_no = userData_List.get(j).name;
                		 if(user_no.equals(taRecord[index_Transfer_user_key])){
                			 switch(Integer.parseInt(taRecord[index_Class_no])/100){
                			 case 0:
                				 userData_List.get(j).n_000++;
                				 break;
                			 case 1:
                				 userData_List.get(j).n_100++;
                				 break;
                			 case 2:
                				 userData_List.get(j).n_200++;
                				 break;
                			 case 3:
                				 userData_List.get(j).n_300++;
                				 break;
                			 case 4:
                				 userData_List.get(j).n_400++;
                				 break;
                			 case 5:
                				 userData_List.get(j).n_500++;
                				 break;
                			 case 6:
                				 userData_List.get(j).n_600++;
                				 break;
                			 case 7:
                				 userData_List.get(j).n_700++;
                				 break;
                			 case 8:
                				 userData_List.get(j).n_800++;
                				 break;
                			 case 9:
                				 userData_List.get(j).n_900++;
                				 break;
                			 default:
                					 break;
                			 }
                		 }
                	 }
                  }
                 
               }catch(Exception e){
                  
               }
            }   
         }
      }catch(IOException e){
         out.println("에러:" + e.getMessage() + "<p>");
         e.printStackTrace(out);
      }
      
      for(int i=0;i<userData_List.size();i++){
    	  System.out.print(userData_List.get(i).name+"        ");
    	  System.out.print("000:"+userData_List.get(i).n_000);
    	  System.out.print(" 100:"+userData_List.get(i).n_100);
    	  System.out.print(" 200:"+userData_List.get(i).n_200);
    	  System.out.print(" 300:"+userData_List.get(i).n_300);
    	  System.out.print(" 400:"+userData_List.get(i).n_400);
    	  System.out.print(" 500:"+userData_List.get(i).n_500);
    	  System.out.print(" 600:"+userData_List.get(i).n_600);
    	  System.out.print(" 700:"+userData_List.get(i).n_700);
    	  System.out.print(" 800:"+userData_List.get(i).n_800);
    	  System.out.print(" 900:"+userData_List.get(i).n_900);
    	  System.out.println();
      }
     /*out.println(index_Transfer_user_key+"");
 	 out.println(index_Loan_type_code+"");
 	 out.println(index_Return_type_code+"");
 	 out.println(index_loan_date+"");
 	 out.println(index_Return_plan_Date+"");
 	 out.println(index_Class_no+"");
 	 out.println(index_Manage_code+"");
 	 out.println(index_Reg_code+"");
 	 out.println(index_Reg_no+"");
 	 out.println(index_title+"");
 	 out.println(index_User_class_code+"");
 	 out.println(index_User_position_code+"");
 	 out.println(index_L_DEVICE+"");
 	 out.println(index_R_DEVICE+"");*/
      
      req.setAttribute("UploadSuccess", success);
      RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/reference/ReferenceReport.jsp");
      dispatcher.forward(req, resp);      
   }
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
      RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/reference/ReferenceReport.jsp");
      dispatcher.forward(req, resp);
   }
}
