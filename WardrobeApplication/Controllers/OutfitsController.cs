﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeApplication.Models;

namespace WardrobeApplication.Controllers
{
    public class OutfitsController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: Outfits
        public ActionResult Index()
        {
            var outfits = db.Outfits.Include(o => o.Accessory).Include(o => o.Bottom).Include(o => o.Sho).Include(o => o.Top);
            return View(outfits.ToList());
        }

        // GET: Outfits/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // GET: Outfits/Create
        public ActionResult Create()
        {
            ViewBag.AccessoryID = new SelectList(db.Accessories, "AccessoryID", "AccessoryName");
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "BottomName");
            ViewBag.ShoesID = new SelectList(db.Shoes, "ShoesID", "ShoesName");
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "TopName");
            return View();
        }

        // POST: Outfits/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OutfitID,OutfitName,TopID,BottomID,ShoesID,AccessoryID")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Outfits.Add(outfit);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AccessoryID = new SelectList(db.Accessories, "AccessoryID", "AccessoryName", outfit.AccessoryID);
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "BottomName", outfit.BottomID);
            ViewBag.ShoesID = new SelectList(db.Shoes, "ShoesID", "ShoesName", outfit.ShoesID);
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "TopName", outfit.TopID);
            return View(outfit);
        }

        // GET: Outfits/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            ViewBag.AccessoryID = new SelectList(db.Accessories, "AccessoryID", "AccessoryName", outfit.AccessoryID);
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "BottomName", outfit.BottomID);
            ViewBag.ShoesID = new SelectList(db.Shoes, "ShoesID", "ShoesName", outfit.ShoesID);
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "TopName", outfit.TopID);
            return View(outfit);
        }

        // POST: Outfits/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OutfitID,OutfitName,TopID,BottomID,ShoesID,AccessoryID")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Entry(outfit).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AccessoryID = new SelectList(db.Accessories, "AccessoryID", "AccessoryName", outfit.AccessoryID);
            ViewBag.BottomID = new SelectList(db.Bottoms, "BottomID", "BottomName", outfit.BottomID);
            ViewBag.ShoesID = new SelectList(db.Shoes, "ShoesID", "ShoesName", outfit.ShoesID);
            ViewBag.TopID = new SelectList(db.Tops, "TopID", "TopName", outfit.TopID);
            return View(outfit);
        }

        // GET: Outfits/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // POST: Outfits/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Outfit outfit = db.Outfits.Find(id);
            db.Outfits.Remove(outfit);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
