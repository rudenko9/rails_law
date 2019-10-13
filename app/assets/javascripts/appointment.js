class Appointment {
  constructor(obj) {
		this.email = obj.user.email
    this.user_id = obj.user.id
		this.appointment_id = obj.appointments.id
		this.hair_stylist_id = obj.appointments.hair_stylist.id
		this.hair_stylist_name = obj.appointments.hair_stylist.name
		this.hairstyle = obj.appointments.hairstyle
		this.date_time = obj.appointments.date_time
    this.hasInfo = obj.hasInfo
  }

	renderAppointment() {

		const apptBlock = document.getElementById('apptBlock');
		apptBlock.innerHTML += this.createAppointment();
	}
}


Appointment.prototype.createAppointment = function() {
  return `
  <hr/>
  <div>

  ${this.hasInfo
    ? `
    <p><b> Appointment for: </b> ${this.email}</p>
    <p><b> Stylist: </b> ${this.hair_stylist_name}</p>
    <p><b> Hair Style: </b> ${this.hairstyle } </p>
    `
  : `
    <p><b> Date & Time: </b> ${new Date(this.date_time).toDateString()}</p>
    <a href=${`http://localhost:3000/users/${this.user_id}/appointments/${this.appointment_id}`}>More Info</a>
    `
  }

  <hr/>
  </div>
  `
}
