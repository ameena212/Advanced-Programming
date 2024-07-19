using ProjectWebApp.Models;
using System.ComponentModel.DataAnnotations;

public partial class AppCategory
{
    public AppCategory()
    {
        AppServices = new HashSet<AppService>();
        Technicians = new HashSet<AppUser>();

    }
    [Key]
    public int CategoryId { get; set; }
    public string CategoryName { get; set; }
    public string CategoryDescription { get; set; }
    public int ManagerId { get; set; }

    // Propriété de navigation pour le manager
    public virtual AppUser Manager { get; set; }

    // Collection des techniciens associés à cette catégorie
    public virtual ICollection<AppUser> Technicians { get; set; }
    public virtual ICollection<AppService> AppServices { get; set; }
}
