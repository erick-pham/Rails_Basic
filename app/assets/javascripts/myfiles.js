$(function() {
     $("#myfile_attachment").change(function (){
        //console.log($(this));
       var currentFile = $(this)["0"].files["0"];
       console.log(currentFile);
       var fileName = currentFile.name.split('.')[0];
       $("#myfile_name").val(fileName);
       var typeName = currentFile.type;
     });
});