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
      identifier = { name = "align"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "palotai.robin@gmail.com";
      author = "Robin Palotai";
      homepage = "";
      url = "";
      synopsis = "Sequence alignment algorithms.";
      description = "Global or local sequence alignment, not exclusively for text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."uglymemo" or (errorHandler.buildDepError "uglymemo"))
          ];
        buildable = true;
        };
      };
    }