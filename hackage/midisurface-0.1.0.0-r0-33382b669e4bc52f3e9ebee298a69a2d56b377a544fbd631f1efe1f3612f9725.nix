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
      identifier = { name = "midisurface"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paolo.veronelli@gmail.com";
      author = "paolo.veronelli";
      homepage = "";
      url = "";
      synopsis = "A control midi surface";
      description = "A simple GTK2 UI to send midi control values.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "midisurface" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }