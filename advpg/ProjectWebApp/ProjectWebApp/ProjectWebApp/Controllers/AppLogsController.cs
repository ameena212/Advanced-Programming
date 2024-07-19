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
    public class AppLogsController : Controller
    {
        private readonly DBHomeServiceContext _context;

        public AppLogsController(DBHomeServiceContext context)
        {
            _context = context;
        }

        // GET: AppLogs
        public async Task<IActionResult> Index()
        {
            var dBHomeServiceContext = _context.AppLogs.Include(a => a.User);
            return View(await dBHomeServiceContext.ToListAsync());
        }

        // GET: AppLogs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.AppLogs == null)
            {
                return NotFound();
            }

            var appLog = await _context.AppLogs
                .Include(a => a.User)
                .FirstOrDefaultAsync(m => m.LogId == id);
            if (appLog == null)
            {
                return NotFound();
            }

            return View(appLog);
        }

        // GET: AppLogs/Create
        public IActionResult Create()
        {
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "Email");
            return View();
        }

        // POST: AppLogs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("LogId,LogSource,LogType,UserId,LogDateTime,LogMessage,OriginalValue,CurrentValue")] AppLog appLog)
        {
            if (ModelState.IsValid)
            {
                _context.Add(appLog);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "Email", appLog.UserId);
            return View(appLog);
        }

        // GET: AppLogs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.AppLogs == null)
            {
                return NotFound();
            }

            var appLog = await _context.AppLogs.FindAsync(id);
            if (appLog == null)
            {
                return NotFound();
            }
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "Email", appLog.UserId);
            return View(appLog);
        }

        // POST: AppLogs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("LogId,LogSource,LogType,UserId,LogDateTime,LogMessage,OriginalValue,CurrentValue")] AppLog appLog)
        {
            if (id != appLog.LogId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(appLog);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AppLogExists(appLog.LogId))
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
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "Email", appLog.UserId);
            return View(appLog);
        }

        // GET: AppLogs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.AppLogs == null)
            {
                return NotFound();
            }

            var appLog = await _context.AppLogs
                .Include(a => a.User)
                .FirstOrDefaultAsync(m => m.LogId == id);
            if (appLog == null)
            {
                return NotFound();
            }

            return View(appLog);
        }

        // POST: AppLogs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.AppLogs == null)
            {
                return Problem("Entity set 'DBHomeServiceContext.AppLogs'  is null.");
            }
            var appLog = await _context.AppLogs.FindAsync(id);
            if (appLog != null)
            {
                _context.AppLogs.Remove(appLog);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AppLogExists(int id)
        {
          return _context.AppLogs.Any(e => e.LogId == id);
        }
    }
}
