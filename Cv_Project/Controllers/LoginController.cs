﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Cv_Project.Models.Entity;
using Cv_Project.Repositories;
using System.Web.Security;

namespace Cv_Project.Controllers
{
    [AllowAnonymous]
    public class LoginController : Controller
    {
        [HttpGet]
        public ActionResult Index(TblAdmin p)
        {
            DbCvEntities db = new DbCvEntities();   
            var bilgi = db.TblAdmins.FirstOrDefault(x=>x.KullaniciAdi == p.KullaniciAdi && x.Sifre == p.Sifre);   
            if (bilgi != null)
            {
                FormsAuthentication.SetAuthCookie(bilgi.KullaniciAdi, false);
                Session["KullaniciAdi"] = bilgi.KullaniciAdi.ToString();
                return RedirectToAction("Index","Deneyim");

            }
            else
            {
                return RedirectToAction("Index", "Login");
            }
           
        }

        [HttpPost]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }

    }
}