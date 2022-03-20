﻿using System;
using System.Linq;
using System.Web;
using System.Collections.Generic;


namespace ASP.Zachet.TEST
{
    public class ResponseRepository
    {
        private static ResponseRepository repository = new ResponseRepository();
        private List<Student> students = new List<Student>();
        public static ResponseRepository GetRepository()
        {
            return repository;
        }
        public IEnumerable<Student> GetAllResponses()
        {
            return students;
        }
        public void AddResponse(Student st)
        {
            students.Add(st);
        }
    }
}



