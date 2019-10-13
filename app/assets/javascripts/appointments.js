class Appointment {
  constructor(obj) {
		this.email = obj.user.email
		this.appointment_id = obj.appointments.id
		this.hair_stylist_id = obj.appointments.hair_stylist.id
		this.hair_stylist_name = obj.appointments.hair_stylist.name
		this.hairstyle = obj.appointments.hairstyle
		this.date_time = obj.appointments.date_time
  }

createAppointment() {
return `
<div>
<p><b> Appointment for: </b> ${this.email}</p>
<p><b> Stylist: </b> ${this.hair_stylist_name}</p>
<p><b> Hair Style: </b> ${this.hairstyle } </p>
<p><b> Date & Time: </b> ${this.date_time.toDateString}</p>
</div>
`
	}
}

renderAppointment() {

	const apptBlock = document.getElementById('apptBlock')
	apptBlock.innerHTML += this.createAppointment();
}
