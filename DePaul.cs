using System;
using System.Collections.Generic;https://www.youtube.com/watch?v=6skS6QGcAx4
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using WatiN.Core;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using WatiN.Core.DialogHandlers;
using WindowsInput;
using System.Diagnostics;

namespace WindowsFormsApplication1
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Arden();
        }
        static void Arden(){
            IE ARD = new IE("http://www.usapplicants.com/contact-usapplicants-sat-tutors-london/");
            if (ARD.Link(Find.By("href", "http://www.usapplicants.com/contact-usapplicants-sat-tutors-london/")).Exists)
            {
                ARD.Link(Find.By("href", "http://www.usapplicants.com/contact-usapplicants-sat-tutors-london/")).Click();
            }
            if (ARD.TextField(Find.ByName("cname")).Exists)
            {
                ARD.TextField(Find.ByName("cname")).TypeText("Nimisha");
            }
            if (ARD.SelectList(Find.ByName("ctype")).Exists)
            {
                ARD.SelectList(Find.ByName("ctype")).SelectByValue("2");
            }
            if (ARD.TextField(Find.ByName("email")).Exists)
            {
                ARD.TextField(Find.ByName("email")).TypeText("nimisha28@gmail.com");
            }
            if(ARD.TextField(Find.ByName("phone")).Exists)
            {
                ARD.TextField(Find.ByName("phone")).TypeText("9538259282");
            }
            if(ARD.TextField(Find.ByName("school")).Exists)
            {
                ARD.TextField(Find.ByName("school")).TypeText("DonBosco institute of technology");
            }
            if(ARD.TextField(Find.ByName("student")).Exists)
            {
                ARD.TextField(Find.ByName("student")).TypeText ("2008");
            }
            if(ARD.SelectList(Find.ByName("location")).Exists)
            {
                ARD.SelectList(Find.ByName("location")).SelectByValue("5");
            }
            

            
            

    
        //static void DePaul(){
    IE DIE = new IE("http://dpirs.org/contact-us/");
            if (DIE.Link(Find.By("href", "http://dpirs.org/application-enquiry-form")).Exists)
            {
                DIE.Link(Find.By("href", "http://dpirs.org/application-enquiry-form")).Click();
            }
            if (DIE.TextField(Find.ByName("name")).Exists)
            {
                DIE.TextField(Find.ByName("name")).TypeText("varsha");
            }
            if(DIE.SelectList(Find.ByName("gender")).Exists)
            {
                DIE.SelectList(Find.ByName("gender")).SelectByValue("Female");
            }
            if (DIE.TextField(Find.ById("date")).Exists)
            {
                DIE.TextField(Find.ById("date")).TypeText("06/05/1992");
        
            if(DIE.SelectList(Find.ByName("grade")).Exists)
            {
                DIE.SelectList(Find.ByName("grade")).SelectByValue("10 ICSE");
            }
            if (DIE.SelectList(Find.ByName("academicyear")).Exists) 
            {
                DIE.SelectList(Find.ByName("academicyear")).SelectByValue("2018 to 2019");
            }
            if(DIE.SelectList(Find.ByName("admintype")).Exists)
            {
                DIE.SelectList(Find.ByName("admintype")).SelectByValue("Residential");
            }
            if(DIE.TextField(Find.ByName("fathername")).Exists)
            {
                DIE.TextField(Find.ByName("fathername")).TypeText("Devendra");
            }
            if(DIE.TextField(Find.ByName("email")).Exists)
            {
                DIE.TextField(Find.ByName("email")).TypeText("varshagowda905@gmail.com");
            }
            if(DIE.TextField (Find.ByName("phone")).Exists)
            {
                DIE.TextField(Find.ByName("phone")).TypeText("9900539454");
            }
            //Application.ExitThread();
            //DIE.Close();
        }
}
    }
}
    