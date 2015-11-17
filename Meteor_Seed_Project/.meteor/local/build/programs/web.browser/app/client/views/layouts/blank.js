(function(){

/////////////////////////////////////////////////////////////////////////
//                                                                     //
// client/views/layouts/blank.js                                       //
//                                                                     //
/////////////////////////////////////////////////////////////////////////
                                                                       //
Template.blankLayout.rendered = function () {                          // 1
                                                                       //
    // Add gray color for background in blank layout                   //
    $('body').addClass('gray-bg');                                     // 4
};                                                                     //
                                                                       //
Template.blankLayout.destroyed = function () {                         // 8
                                                                       //
    // Remove special color for blank layout                           //
    $('body').removeClass('gray-bg');                                  // 11
};                                                                     //
/////////////////////////////////////////////////////////////////////////

}).call(this);
