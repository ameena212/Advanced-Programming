using HouseCareObjects.Models;
using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;

namespace HouseCare
{
    public partial class PasswordResetToken
    {
        public int Id { get; set; }
        public string Token { get; set; } = null!;
        public DateTime ExpiryDate { get; set; }
        public bool Used { get; set; }
        public int UserId { get; set; }

        public virtual AppUser User { get; set; } = null!;
    }
}
