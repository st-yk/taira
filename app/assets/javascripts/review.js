// $(document).on('turbolinks:load', function(){
  $(function(){
    $("#id_review").on("submit", function(){
      console.log("www");
      e.preventDefault()
      // console.logを用いてイベント発火しているか確
    });
  });
// });






// $(document).on(function(){
//   $('form__submit').on('submit', function(e){
//     e.preventDefault();
//     var review = new FormData(this); //フォームに入力した値を取得しています。
//     console.log();
//   })


// jQuery(document).on('turbolinks:load', function(){
  // $(function(){
  //   $(".form__submit").on('submit', function(e){
  //     console.log('www');
  //     e.preventDefault()
  //     var input = $(".review__form").var();
  //     $.ajax({
  //       //サーバに送信するリクエストの設定
  //       type: 'POST',
  //       url: url,//コントローラ？何をかくか？,パスを書いて見た
  //       data: {keyword: input}, //フォームの値とは？
  //       dataType: 'json'
  //       .done(function(data){
  //         //通信に成功した場合の処理
  //         $(revirew)();
  //         data.forEach(function(){
  //           $('review').append('<li>${review.name}</li>');
  //         })
  //       .fail(function(){
  //         //通信に失敗した場合の処理
  //         alert('検索に失敗しました')
  //       })
  //       })
  //     })
  //   })
  // })
