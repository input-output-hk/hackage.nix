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
      specVersion = "1.6";
      identifier = { name = "lambdacat"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>,\nDaniel Ehlers <danielehlers@mindeye.net>";
      author = "Andreas Baldeau, Daniel Ehlers";
      homepage = "";
      url = "";
      synopsis = "Webkit Browser";
      description = "A Browser based on WebKit, concepted to be easy to use and\nextendable";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
          (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = { "lambdacat" = { buildable = true; }; };
      };
    }