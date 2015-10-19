(function(){
Template.__checkName("topNavbar");
Template["topNavbar"] = new Template("Template.topNavbar", (function() {
  var view = this;
  return HTML.DIV({
    "class": "row border-bottom"
  }, "\n        ", HTML.NAV({
    "class": "navbar navbar-static-top",
    role: "navigation",
    style: "margin-bottom: 0"
  }, "\n            ", HTML.Raw('<div class="navbar-header">\n                <a id="navbar-minimalize" class="minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>\n                <form role="search" class="navbar-form-custom" action="search_results">\n                    <div class="form-group">\n                        <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">\n                    </div>\n                </form>\n            </div>'), "\n            ", HTML.UL({
    "class": "nav navbar-top-links navbar-right"
  }, "\n                ", HTML.Raw('<li>\n                    <a href="#">\n                        <i class="fa fa-sign-out"></i> Log out\n                    </a>\n                </li>'), "\n                ", HTML.LI("\n                  ", Spacebars.include(view.lookupTemplate("loginButtons")), "\n                "), "\n\n            "), "\n\n        "), "\n    ");
}));

})();
