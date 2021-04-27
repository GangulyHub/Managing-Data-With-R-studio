#Author- Ganguly Kumar
#___________________________ CASE-1-Call Centre_________________________ 
#TASK-1.1- Create the appropriate data structure to save the required data

CALL_CENTRE <-data.frame("Phone_no."=c(9041,9888,9646,7777,8899),
                         "Name"=c("ANIKET","MANISHA","RAMAN","RAJNIKANT","NA"),
                         "Location"=c("Delhi","Chandigarh","Delhi","AP","NA"),
                         "Duration"=c("9 min","15 min","30 min","20 sec","NA"))
CALL_CENTRE

#TASK-1.2-After 10 mins 3rd Caller again calls and gets his name rectified as DAMAN

caller <- CALL_CENTRE
caller$Name <- as.character(CALL_CENTRE$Name)
caller[caller == "RAMAN"] <- "DAMAN"
caller

#TASK-1.3- saving Every Caller data with number as CALLER1,CALLER2,CALLER3,CALLER4 and CALLER5 without making it as an attribute.

row.names(caller) <- c("CALLER1","CALLER2","CALLER3","CALLER4","CALLER5")
CALL_CENTRE <-caller
CALL_CENTRE



#________________________ CASE-2- PVR Cinemas ________________________
#TASK-2.1- Create a matrix for this data and analyze.

PVR_CINEMAS <- matrix(c(20,40,80,50,65,90,30,65,45),nrow =3,ncol=3,
                dimnames =list(c(1,2,3),c("Dhoom","Golmaal","Housefull")))
PVR_CINEMAS

#TASK-2.2- The average collection for movie.

colMeans(PVR_CINEMAS)

#Task-2.3- Percentage increase/decrease in collection after each sequel.

x1<-((PVR_CINEMAS[2,1] - PVR_CINEMAS[1,1])/PVR_CINEMAS[1,1])*100
x2<-((PVR_CINEMAS[3,1] - PVR_CINEMAS[2,1])/PVR_CINEMAS[2,1])*100
x3<-((PVR_CINEMAS[2,2] - PVR_CINEMAS[1,2])/PVR_CINEMAS[1,2])*100
x4<-((PVR_CINEMAS[3,2] - PVR_CINEMAS[2,2])/PVR_CINEMAS[2,2])*100
x5<-((PVR_CINEMAS[2,3] - PVR_CINEMAS[1,3])/PVR_CINEMAS[1,3])*100
x6<-((PVR_CINEMAS[3,3] - PVR_CINEMAS[2,3])/PVR_CINEMAS[2,3])*100
percentage_matrix <- matrix(c(x1,x2,x3,x4,x5,x6),nrow = 2,ncol  =3,
                            dimnames =list(c("seq1 %inc/dec ","seq2 %inc/dec"),c("Dhoom(%)","Golmaal(%)","Housefull(%)")))
percentage_matrix

#______________________ CASE-3 _____________________________
#TASK__________ analyzing MEDICAL COLLEGE DATA_____________

Medical_college_data<-data.frame("Patient id"=c("P101","P105"),
                                "Patient Name"=c("Rohit","Renu"))
Medical_college_data

Patient_biodata<-data.frame("Patient id"=c("P101","P105"),
                            "Patient Name"=c("Rohit","Renu"),
                            "Patient Gender"=c("M","F"),
                            "Patient Job"=c("Software Engineer","Web developer"),
                            "Patient Job Hour"=c(8,5))
Patient_biodata
Medical_History<-data.frame("Patient id"=c("P101","P105"),
                            "Blood Group"=c("AB+","B+"),
                            "Blood_Sugar_Level"=c("130mg/dL","170mg/dL"),
                            "Blood Pressure"=c("150/90mmHG","160/80mmHG"),
                            "Heartbeat"=c("65pm","70pm"),
                            "ESI"=c("0.66%","0.76%"),
                            "RBC Count"=c("6.2cells/mcl","5.5cells/mcl"),
                            "WBC Count"=c("7000cells/L","5000cells/L"))
Medical_History
Parents_Medical_History<-data.frame("Patient id"=c("P101","P105"),
                                    "Father Name"=c("Sohit Jha","Mohit Tiwari"),
                                    "Blood Group"=c("AB+","B+"),
                                    "Average Blood Sugar"=c("150mg/dL","160mg/dL"),
                                    "Average Blood Pressure"=c("120/80mmHG","140/90mmHG"))
Parents_Medical_History
patient_data1<-merge(Patient_biodata,Medical_college_data,all=TRUE)
patient_data1
patient_data2<-merge(patient_data1,Medical_History,all=TRUE)
patient_data2
patient_final_data <-merge(patient_data2,Parents_Medical_History,all=TRUE,stringsAsFactors=T)
patient_final_data
View(patient_final_data)
P101<- patient_final_data[1, ]
P101
View(P101)
P105<- patient_final_data[2, ]
P105
View(P105)

# __________________________________THANK YOU____________________________