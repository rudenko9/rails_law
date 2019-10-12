$(function () {
	console.log('posts.js is loaded ...')

});

class Appointment {
  constructor(obj) {
		this.date_time = obj.date_time,
		this.hairstyle = obj.hairstyle,
		this.hair_stylist = obj.hair_stylist,
		this.user_id = obj.user_id,
    this.hair_stylist_id = obj.hair_stylist_id,
    this.hairstyle_id = obj.hairstyle_id
  }
}
