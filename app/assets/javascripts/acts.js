
var ready = function () {
    $('#acts-table').DataTable();
};

$(document).ready(ready);
$(document).on('page:load', ready);
