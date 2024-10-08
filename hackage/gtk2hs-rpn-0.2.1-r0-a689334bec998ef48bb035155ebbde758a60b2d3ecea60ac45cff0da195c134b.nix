{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "gtk2hs-rpn"; version = "0.2.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "none";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Adds a module to gtk2hs allowing layouts to be defined using\nreverse polish notation.";
      description = "Adds a module \"Graphics.UI.Gtk.Layout.Rpn\" to @gtk2hs@. This\nmodule defines a type @RPN@ for operators, which is an\ninstance of 'Data.Monoid.Monoid' class.  You can combine those\noperators using reverse polish notation, as made popular by,\nsay, HP calculators. There are operators for layout elements,\nlike expanders, panes, boxes and notebooks, and for a few\nother widgets, like buttons and labels. You can also insert\nany existing @gtk2hs@ widget in the stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }