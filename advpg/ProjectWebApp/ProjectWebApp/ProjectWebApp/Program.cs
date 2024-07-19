using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using ProjectWebApp.Data;
using ProjectWebApp.Models;

var builder = WebApplication.CreateBuilder(args);

// Configuration de la chaîne de connexion pour Identity
var identityConnectionString = builder.Configuration.GetConnectionString("IdentityContextConnection")
    ?? throw new InvalidOperationException("Connection string 'IdentityContextConnection' not found.");

// Configuration du DbContext pour l'application principale
builder.Services.AddDbContext<DBHomeServiceContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Configuration du DbContext pour l'identité
builder.Services.AddDbContext<IdentityContext>(options =>
    options.UseSqlServer(identityConnectionString));

// Configuration de l'identité
builder.Services.AddDefaultIdentity<IdentityUser>()
    .AddRoles<IdentityRole>()
    .AddEntityFrameworkStores<IdentityContext>();

// Ajouter les services aux conteneurs
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configuration du pipeline HTTP
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapRazorPages();

app.Run();
