using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ProjectWebApp.Models;

namespace ProjectWebApp.Controllers
{
    public class AppServicesController : Controller
    {
        private readonly DBHomeServiceContext _context;

        public AppServicesController(DBHomeServiceContext context)
        {
            _context = context;
        }

        // GET: AppServices
        public async Task<IActionResult> Index(string searchString, int? categoryId)
        {
            ViewData["CurrentFilter"] = searchString;

            var services = from s in _context.AppServices.Include(s => s.Category)
                           select s;

            if (categoryId != null)
            {
                services = services.Where(s => s.CategoryId == categoryId);
            }

            if (!String.IsNullOrEmpty(searchString))
            {
                services = services.Where(s => s.ServiceName.Contains(searchString) ||
                                               s.ServiceType.Contains(searchString) ||
                                               s.ServiceDescription.Contains(searchString) ||
                                               s.Category.CategoryDescription.Contains(searchString));
            }

            return View(await services.ToListAsync());
        }


        // GET: AppServices/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.AppServices == null)
            {
                return NotFound();
            }

            var appService = await _context.AppServices
                .Include(a => a.Category)
                .FirstOrDefaultAsync(m => m.ServiceId == id);
            if (appService == null)
            {
                return NotFound();
            }

            return View(appService);
        }
 

        // GET: AppServices/Create
        public IActionResult Create()
        {
            ViewData["CategoryId"] = new SelectList(_context.AppCategories, "CategoryId", "CategoryDescription");
            return View();
        }

        // POST: AppServices/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ServiceId,ServiceName,ServiceType,ServiceDescription,CategoryId,ServiceDuration,Price")] AppService appService)
        {
            if (ModelState.IsValid)
            {
                _context.Add(appService);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["CategoryId"] = new SelectList(_context.AppCategories, "CategoryId", "CategoryDescription", appService.CategoryId);
            return View(appService);
        }

        // GET: AppServices/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.AppServices == null)
            {
                return NotFound();
            }

            var appService = await _context.AppServices.FindAsync(id);
            if (appService == null)
            {
                return NotFound();
            }
            ViewData["CategoryId"] = new SelectList(_context.AppCategories, "CategoryId", "CategoryDescription", appService.CategoryId);
            return View(appService);
        }

        // POST: AppServices/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ServiceId,ServiceName,ServiceType,ServiceDescription,CategoryId,ServiceDuration,Price")] AppService appService)
        {
            if (id != appService.ServiceId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(appService);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AppServiceExists(appService.ServiceId))
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
            ViewData["CategoryId"] = new SelectList(_context.AppCategories, "CategoryId", "CategoryDescription", appService.CategoryId);
            return View(appService);
        }

        // GET: AppServices/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.AppServices == null)
            {
                return NotFound();
            }

            var appService = await _context.AppServices
                .Include(a => a.Category)
                .FirstOrDefaultAsync(m => m.ServiceId == id);
            if (appService == null)
            {
                return NotFound();
            }

            return View(appService);
        }

        // POST: AppServices/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.AppServices == null)
            {
                return Problem("Entity set 'DBHomeServiceContext.AppServices'  is null.");
            }
            var appService = await _context.AppServices.FindAsync(id);
            if (appService != null)
            {
                _context.AppServices.Remove(appService);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AppServiceExists(int id)
        {
          return _context.AppServices.Any(e => e.ServiceId == id);
        }
    }
}
