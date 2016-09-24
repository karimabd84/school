﻿/*
 * Copyright André Kirst
 * 2016 - 2016
 * School
*/
using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApi.Models
{
    public class Person : ModelBaseObject
    {
        /// <summary>
        /// Die ID der Person
        /// </summary>
        public string PersonID
        {
            get; set;
        }

        /// <summary>
        /// Der Vorname der Person
        /// </summary>
        public string Vorname
        {
            get; set;
        }

        /// <summary>
        /// Der Nachname der Person
        /// </summary>
        public string Nachname
        {
            get; set;
        }

        /// <summary>
        /// Der Geburtstag der Person
        /// </summary>
        public DateTime? Geburtstag
        {
            get; set;
        }

        /// <summary>
        /// Die Anmeldedaten zu der Person
        /// </summary>
        public PersonLoginData LoginData
        {
            get; set;
        }

        /// <summary>
        /// Die Wohnadresse
        /// </summary>
        public Adresse Wohnadresse
        {
            get; set;
        }
    }
}
