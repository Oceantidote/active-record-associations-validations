# This is where you can create initial data for your app.
Consultation.destroy_all
Intern.destroy_all
Doctor.destroy_all
Patient.destroy_all


doc = Doctor.create!(first_name: 'bob', last_name: "house")
Intern.create!(first_name: "willy", doctor: doc)
pat = Patient.create!(first_name: "harald")
Consultation.create!(doctor: doc, patient: pat)
