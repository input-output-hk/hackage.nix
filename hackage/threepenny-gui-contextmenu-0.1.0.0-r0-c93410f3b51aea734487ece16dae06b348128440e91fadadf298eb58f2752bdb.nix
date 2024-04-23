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
      specVersion = "1.10";
      identifier = {
        name = "threepenny-gui-contextmenu";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Jeremy Barisch-Rooney";
      maintainer = "example@example.com";
      author = "Jeremy Barisch-Rooney";
      homepage = "https://github.com/barischj/threepenny-gui-contextmenu#readme";
      url = "";
      synopsis = "Write simple nested context menus for threepenny-gui.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
        ];
        buildable = true;
      };
      exes = {
        "threepenny-gui-contextmenu-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."threepenny-gui-contextmenu" or (errorHandler.buildDepError "threepenny-gui-contextmenu"))
          ];
          buildable = true;
        };
      };
    };
  }