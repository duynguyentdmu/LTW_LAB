using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace QUANLYBANSACH.App_Code
{
    public static class XLDL
    {
        public static string strCon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
        //Truyền câu truy vấn trả về data table
        public static DataTable GetData(string lenhSQL)
        {
            SqlConnection sqlConnection = new SqlConnection(strCon);
            try
            {
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(lenhSQL, sqlConnection);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                return dataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //Lệnh thực thi insert, update, delete
        public static void Execute(string lenhSQL)
        {
            SqlConnection sqlConnection = new SqlConnection(strCon);
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand(lenhSQL,sqlConnection);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }
        //Lấy một giá trị từ database
        public static string GetValue(string lenhSQL)
        {
            SqlConnection sqlConnection = new SqlConnection(strCon);
            sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand(lenhSQL, sqlConnection);
            string value = sqlCommand.ExecuteScalar().ToString();
            sqlConnection.Close();
            return value;
        }

    }
}