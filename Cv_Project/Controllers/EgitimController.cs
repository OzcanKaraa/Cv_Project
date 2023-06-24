﻿using Cv_Project.Models.Entity;
using Cv_Project.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cv_Project.Controllers
{
    public class EgitimController : Controller
    {

        GenericRepository<TblEgitimlerim> repo = new GenericRepository<TblEgitimlerim>();
        public ActionResult Index()
        {
            var egitim = repo.List();
            return View(egitim);
        }

        [HttpGet]
        public ActionResult EgitimEkle()
        {
            return View();
        }

        [HttpPost]
        public ActionResult EgitimEkle(TblEgitimlerim p)
        {
            if (!ModelState.IsValid)
            {
                return View("EgitimEkle");  
            }
            repo.TAdd(p);
            return RedirectToAction("Index");
        }

        public ActionResult EgitimSil(int id )
        {
            var egitim = repo.Find(x=>x.ID == id);
            repo.TDelete(egitim);
            return RedirectToAction("Index");
        }

        public ActionResult EgitimDuzenle(int id)
        {
            var egitim = repo.Find(x => x.ID == id);
            return View(egitim);
        }

        public ActionResult EgitimDuzenle(TblEgitimlerim t)
        {
            var egitim = repo.Find(x => x.ID == t.ID);
            egitim.Baslik=t.Baslik;
            egitim.AltBaslik1 = t.AltBaslik1;
            egitim.AltBaslik2 = t.AltBaslik2;   
            egitim.Tarih=t.Tarih;
            egitim.GNO=t.GNO;
            return View(egitim);
        }


    }
}