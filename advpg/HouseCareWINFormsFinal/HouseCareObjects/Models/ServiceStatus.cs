﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace HouseCareObjects.Models
{
    public partial class ServiceStatus
    {
        public ServiceStatus()
        {
            ServiceRequests = new HashSet<ServiceRequest>();
        }

        public int ServiceStatusId { get; set; }
        public string ServiceState { get; set; }

        public virtual ICollection<ServiceRequest> ServiceRequests { get; set; }
    }
}