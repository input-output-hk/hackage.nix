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
      specVersion = "1.12";
      identifier = { name = "gtk-scaling-image"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/taffybar/gtk-scaling-image#readme";
      url = "";
      synopsis = "Generic GTK image scaling helpers for haskell-gi";
      description = "Please see the README on Github at <https://github.com/taffybar/gtk-scaling-image#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gi-cairo-connector" or (errorHandler.buildDepError "gi-cairo-connector"))
          (hsPkgs."gi-cairo-render" or (errorHandler.buildDepError "gi-cairo-render"))
          (hsPkgs."gi-gdk3" or (errorHandler.buildDepError "gi-gdk3"))
          (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
          (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
        ];
        buildable = true;
      };
    };
  }