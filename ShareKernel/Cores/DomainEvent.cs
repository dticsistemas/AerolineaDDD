﻿using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShareKernel.Cores {
	public abstract record DomainEvent:INotification {
		public DateTime OccuredOn { get; }
		public Guid Id { get; }

		protected DomainEvent(DateTime occuredOn) {
			OccuredOn = occuredOn;
			Id = Guid.NewGuid();
		}
	}
}
