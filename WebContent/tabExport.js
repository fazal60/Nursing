/**
 * 
 */

$(document).ready(function () {
        $("#btnExport").click(function () {
            $("#example").btechco_excelexport({
                containerid: "example"
               , datatype: $datatype.Table
            });
        });
    });