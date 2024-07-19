using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace ProjectWebApp.Models
{
    public class AppCategoriesController : Controller
    {
        private readonly DBHomeServiceContext _context;

        public AppCategoriesController(DBHomeServiceContext context)
        {
            _context = context;
        }

        // GET: AppCategories
        public async Task<IActionResult> Index()
        {
            var dBHomeServiceContext = _context.AppCategories.Include(a => a.Manager);
            return View(await dBHomeServiceContext.ToListAsync());
        }

        // GET: AppCategories/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.AppCategories == null)
            {
                return NotFound();
            }

            var appCategory = await _context.AppCategories
                .Include(a => a.Manager)
                .FirstOrDefaultAsync(m => m.CategoryId == id);
            if (appCategory == null)
            {
                return NotFound();
            }

            return View(appCategory);
        }

        // GET: AppCategories/Create
        public IActionResult Create()
        {
            ViewData["ManagerId"] = new SelectList(_context.AppUsers, "UserID", "UserID");
            return View();
        }

        // POST: AppCategories/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("CategoryId,CategoryName,CategoryDescription,ManagerId")] AppCategory appCategory)
        {
            if (ModelState.IsValid)
            {
                _context.Add(appCategory);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ManagerId"] = new SelectList(_context.AppUsers, "UserID", "UserID", appCategory.ManagerId);
            return View(appCategory);
        }

        // GET: AppCategories/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.AppCategories == null)
            {
                return NotFound();
            }

            var appCategory = await _context.AppCategories.FindAsync(id);
            if (appCategory == null)
            {
                return NotFound();
            }
            ViewData["ManagerId"] = new SelectList(_context.AppUsers, "UserID", "UserID", appCategory.ManagerId);
            return View(appCategory);
        }

        // POST: AppCategories/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("CategoryId,CategoryName,CategoryDescription,ManagerId")] AppCategory appCategory)
        {
            if (id != appCategory.CategoryId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(appCategory);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AppCategoryExists(appCategory.CategoryId))
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
            ViewData["ManagerId"] = new SelectList(_context.AppUsers, "UserID", "UserID", appCategory.ManagerId);
            return View(appCategory);
        }

        // GET: AppCategories/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.AppCategories == null)
            {
                return NotFound();
            }

            var appCategory = await _context.AppCategories
                .Include(a => a.Manager)
                .FirstOrDefaultAsync(m => m.CategoryId == id);
            if (appCategory == null)
            {
                return NotFound();
            }

            return View(appCategory);
        }

        // POST: AppCategories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.AppCategories == null)
            {
                return Problem("Entity set 'DBHomeServiceContext.AppCategories'  is null.");
            }
            var appCategory = await _context.AppCategories.FindAsync(id);
            if (appCategory != null)
            {
                _context.AppCategories.Remove(appCategory);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AppCategoryExists(int id)
        {
            return _context.AppCategories.Any(e => e.CategoryId == id);
        }
    }
}
