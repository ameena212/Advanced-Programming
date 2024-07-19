using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace ProjectWebApp.Models
{
    public class ServiceRequestsController : Controller
    {
        private readonly DBHomeServiceContext _context;

        public ServiceRequestsController(DBHomeServiceContext context)
        {
            _context = context;
        }

        // GET: ServiceRequests
        public async Task<IActionResult> Index()
        {
            var dBHomeServiceContext = _context.ServiceRequests.Include(s => s.Document).Include(s => s.Service).Include(s => s.ServiceStatus).Include(s => s.User);
            return View(await dBHomeServiceContext.ToListAsync());
        }

        // GET: ServiceRequests/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.ServiceRequests == null)
            {
                return NotFound();
            }

            var serviceRequest = await _context.ServiceRequests
                .Include(s => s.Document)
                .Include(s => s.Service)
                .Include(s => s.ServiceStatus)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.ServiceRequestId == id);
            if (serviceRequest == null)
            {
                return NotFound();
            }

            return View(serviceRequest);
        }

        // GET: ServiceRequests/Create
        public IActionResult Create()
        {
            ViewData["DocumentId"] = new SelectList(_context.Documents, "DocumentId", "DocumentId");
            ViewData["ServiceId"] = new SelectList(_context.AppServices, "ServiceId", "ServiceId");
            ViewData["ServiceStatusId"] = new SelectList(_context.ServiceStatuses, "ServiceStatusId", "ServiceStatusId");
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "UserID");
            return View();
        }

        // POST: ServiceRequests/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ServiceRequestId,ServiceId,Description,DateNeeded,Price,ServiceStatusId,DocumentId,UserId")] ServiceRequest serviceRequest)
        {
            if (ModelState.IsValid)
            {
                _context.Add(serviceRequest);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DocumentId"] = new SelectList(_context.Documents, "DocumentId", "DocumentId", serviceRequest.DocumentId);
            ViewData["ServiceId"] = new SelectList(_context.AppServices, "ServiceId", "ServiceId", serviceRequest.ServiceId);
            ViewData["ServiceStatusId"] = new SelectList(_context.ServiceStatuses, "ServiceStatusId", "ServiceStatusId", serviceRequest.ServiceStatusId);
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "UserID", serviceRequest.UserId);
            return View(serviceRequest);
        }

        // GET: ServiceRequests/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.ServiceRequests == null)
            {
                return NotFound();
            }

            var serviceRequest = await _context.ServiceRequests.FindAsync(id);
            if (serviceRequest == null)
            {
                return NotFound();
            }
            ViewData["DocumentId"] = new SelectList(_context.Documents, "DocumentId", "DocumentId", serviceRequest.DocumentId);
            ViewData["ServiceId"] = new SelectList(_context.AppServices, "ServiceId", "ServiceId", serviceRequest.ServiceId);
            ViewData["ServiceStatusId"] = new SelectList(_context.ServiceStatuses, "ServiceStatusId", "ServiceStatusId", serviceRequest.ServiceStatusId);
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "UserID", serviceRequest.UserId);
            return View(serviceRequest);
        }

        // POST: ServiceRequests/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ServiceRequestId,ServiceId,Description,DateNeeded,Price,ServiceStatusId,DocumentId,UserId")] ServiceRequest serviceRequest)
        {
            if (id != serviceRequest.ServiceRequestId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(serviceRequest);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ServiceRequestExists(serviceRequest.ServiceRequestId))
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
            ViewData["DocumentId"] = new SelectList(_context.Documents, "DocumentId", "DocumentId", serviceRequest.DocumentId);
            ViewData["ServiceId"] = new SelectList(_context.AppServices, "ServiceId", "ServiceId", serviceRequest.ServiceId);
            ViewData["ServiceStatusId"] = new SelectList(_context.ServiceStatuses, "ServiceStatusId", "ServiceStatusId", serviceRequest.ServiceStatusId);
            ViewData["UserId"] = new SelectList(_context.AppUsers, "UserID", "UserID", serviceRequest.UserId);
            return View(serviceRequest);
        }

        // GET: ServiceRequests/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.ServiceRequests == null)
            {
                return NotFound();
            }

            var serviceRequest = await _context.ServiceRequests
                .Include(s => s.Document)
                .Include(s => s.Service)
                .Include(s => s.ServiceStatus)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.ServiceRequestId == id);
            if (serviceRequest == null)
            {
                return NotFound();
            }

            return View(serviceRequest);
        }

        // POST: ServiceRequests/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.ServiceRequests == null)
            {
                return Problem("Entity set 'DBHomeServiceContext.ServiceRequests'  is null.");
            }
            var serviceRequest = await _context.ServiceRequests.FindAsync(id);
            if (serviceRequest != null)
            {
                _context.ServiceRequests.Remove(serviceRequest);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ServiceRequestExists(int id)
        {
          return _context.ServiceRequests.Any(e => e.ServiceRequestId == id);
        }
    }
}
