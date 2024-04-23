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
      specVersion = "1.8";
      identifier = { name = "lgtk"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://people.inf.elte.hu/divip/LGtk/index.html";
      url = "";
      synopsis = "lens-based API for Gtk";
      description = "The main interface module of LGtk is \"GUI.MLens.Gtk\".\n\nSee also <http://people.inf.elte.hu/divip/LGtk/index.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."control-monad-free" or (errorHandler.buildDepError "control-monad-free"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
        ];
        buildable = true;
      };
      exes = {
        "lgtkdemo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lgtk" or (errorHandler.buildDepError "lgtk"))
          ];
          buildable = true;
        };
      };
    };
  }