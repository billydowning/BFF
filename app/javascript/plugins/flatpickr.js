import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr(".datepicker", {})

flatpickr(".datepicker-nocalendar", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
})

