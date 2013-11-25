function scroll(id){
  $('html,body').animate( {scrollTop: $("."+id).offset().top}, {duration:'fast'});
}
