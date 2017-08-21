$(function() {
var itemlink = $(".item-link");
var all = "all"

  function buildHTML(product){
    var html = '<a class="item-link" href="/products/' + product.id + '">'
  if ("受付中" == $(product.status).selector) {
  html += '<p class="order_now">' + product.status + '</p>'+
  '<p class="no_underline">残り' + product.rem_num + '</p>'
  }
  if ("受付終了" == $(product.status).selector) {
  html += '<p class="order_end">' + product.status + '</p>'+
  '<p class="no_underline">申し込み上限に達しました</p>'
  }
  html += '<section class="items">'+
    '<figure class="item-image">'+
      '<img>'+
        '<img height="223" width="340" alt="プロダクト写真" src = "' + product.image.url + '" >'+
    '</figure>'+
    '<h2 class="top_product_title">' + product.title + '</h2>'+
    '<div class="info">'+
      '<p class="place">'+
       '<i class="fa fa-map-marker"></i>'+
        '${product.area}'+
      '</p>'+
      '<p class="price">'+
        '<i class="fa fa-shopping-bag"></i>'+
        '¥' + product.price +
      '</p>'+
    '</div>'+
  '</section>'+
'</a>';
    return html;
  }
  $(".status_sort").on("change", function() {
    var path = location.pathname ;
    var html_status = $(".status_sort").val();
    $(".item-link").remove()
    $.ajax({
      url: path,
      type: "GET",
      dataType: "json",
      processData: false,
      contentType: false,
    })
    .done(function(products){
      $.each(products,function(i,product){
        if(  html_status  ==   $(product.status).selector) {
        var html = buildHTML(product);
        $('.content').append(html);
        }
        else if(  html_status  ==   all) {
        var html = buildHTML(product);
        $('.content').append(html);
        }
      });
    });
  });
});


