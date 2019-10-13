class Appointment {
  constructor(obj) {
		console.log(obj);
		this.email = obj.user.email
		this.appointment_id = obj.appointments.id
		this.hair_stylist_id = obj.appointments.hair_stylist.id
		this.hair_stylist_name = obj.appointments.hair_stylist.name
		this.hairstyle = obj.appointments.hairstyle
		this.date_time = obj.appointments.date_time
  }

createAppointment() {
return `
<hr/>
<div>
<p><b> Appointment for: </b> ${this.email}</p>
<p><b> Stylist: </b> ${this.hair_stylist_name}</p>
<p><b> Hair Style: </b> ${this.hairstyle } </p>
<p><b> Date & Time: </b> ${new Date(this.date_time).toDateString()}</p>
<hr/>
</div>
`
	}

	renderAppointment() {

		const apptBlock = document.getElementById('apptBlock')
		apptBlock.innerHTML += this.createAppointment();
	}
}
