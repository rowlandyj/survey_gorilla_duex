function remove_fields(link) {
    $(link).prev("input[type=hidden]").value = '1';
    $(link).closest(".fields").hide();
}

function add_fields(link) {
  $(link).closest(".field").prepend("inpute[type=text_field]");
}
