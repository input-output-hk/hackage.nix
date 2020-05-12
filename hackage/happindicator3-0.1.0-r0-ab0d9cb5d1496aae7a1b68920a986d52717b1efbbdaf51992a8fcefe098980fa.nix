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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "happindicator3"; version = "0.1.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "mlacorte365@gmail.com";
      author = "Michael LaCorte";
      homepage = "https://github.com/mlacorte/happindicator3";
      url = "";
      synopsis = "Binding to the appindicator library.";
      description = "libappindicator is a library for setting up indicator\nitems and menus on indicator panels, as used in the\nUnity environment in Ubuntu. This binding allows\nlibappindicator to be used from Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          ];
        pkgconfig = [
          (pkgconfPkgs."appindicator3-0.1" or (errorHandler.pkgConfDepError "appindicator3-0.1"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."happindicator3" or (errorHandler.buildDepError "happindicator3"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }