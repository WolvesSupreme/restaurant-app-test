jQuery.validator.addMethod(
  "noSpace",
  function (value, element) {
    return value == "" || value.trim().length != 0;
  },
  "No space please and don't leave it empty"
);
jQuery.validator.addMethod(
  "noSpace",
  function (value, element) {
    return value.indexOf(" ") < 0 && value != "";
  },
  "Space are not allowed"
);
var $registrationForm = $("#registration");
if ($registrationForm.length) {
  $registrationForm.validate({
    rules: {
      username: "required",
      password: {
        required: true,
        minlength: 8,
        noSpace: true,
      },
    },
    messages: {
      username: {
        required: "Please enter username!",
      },
      password: {
        required: "Please enter password!",
        minlength: "Placa must be 8 char long",
        noSpace: true,
      },
    },
  });
}
