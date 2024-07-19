﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ProjectWebApp.Models;

namespace ProjectWebApp.Controllers
{
    public class NotificationStatusController : Controller
    {
        private readonly DBHomeServiceContext _context;

        public NotificationStatusController(DBHomeServiceContext context)
        {
            _context = context;
        }

        // GET: NotificationStatus
        public async Task<IActionResult> Index()
        {
              return View(await _context.NotificationStatuses.ToListAsync());
        }

        // GET: NotificationStatus/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.NotificationStatuses == null)
            {
                return NotFound();
            }

            var notificationStatus = await _context.NotificationStatuses
                .FirstOrDefaultAsync(m => m.NotificationStatusId == id);
            if (notificationStatus == null)
            {
                return NotFound();
            }

            return View(notificationStatus);
        }

        // GET: NotificationStatus/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: NotificationStatus/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("NotificationStatusId,NotificationStatus1")] NotificationStatus notificationStatus)
        {
            if (ModelState.IsValid)
            {
                _context.Add(notificationStatus);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(notificationStatus);
        }

        // GET: NotificationStatus/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.NotificationStatuses == null)
            {
                return NotFound();
            }

            var notificationStatus = await _context.NotificationStatuses.FindAsync(id);
            if (notificationStatus == null)
            {
                return NotFound();
            }
            return View(notificationStatus);
        }

        // POST: NotificationStatus/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("NotificationStatusId,NotificationStatus1")] NotificationStatus notificationStatus)
        {
            if (id != notificationStatus.NotificationStatusId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(notificationStatus);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!NotificationStatusExists(notificationStatus.NotificationStatusId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(notificationStatus);
        }

        // GET: NotificationStatus/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.NotificationStatuses == null)
            {
                return NotFound();
            }

            var notificationStatus = await _context.NotificationStatuses
                .FirstOrDefaultAsync(m => m.NotificationStatusId == id);
            if (notificationStatus == null)
            {
                return NotFound();
            }

            return View(notificationStatus);
        }

        // POST: NotificationStatus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.NotificationStatuses == null)
            {
                return Problem("Entity set 'DBHomeServiceContext.NotificationStatuses'  is null.");
            }
            var notificationStatus = await _context.NotificationStatuses.FindAsync(id);
            if (notificationStatus != null)
            {
                _context.NotificationStatuses.Remove(notificationStatus);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool NotificationStatusExists(int id)
        {
          return _context.NotificationStatuses.Any(e => e.NotificationStatusId == id);
        }
    }
}
