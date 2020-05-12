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
      identifier = { name = "lgtk"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://www.haskell.org/haskellwiki/LGtk";
      url = "";
      synopsis = "lens-based API for Gtk";
      description = "The main interface module of LGtk is \"LGtk\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "lgtkdemo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lgtk" or (errorHandler.buildDepError "lgtk"))
            ];
          buildable = true;
          };
        };
      };
    }