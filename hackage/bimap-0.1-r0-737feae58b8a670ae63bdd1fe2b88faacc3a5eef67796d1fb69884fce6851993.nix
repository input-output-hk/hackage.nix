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
      identifier = { name = "bimap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "scook0@gmail.com";
      author = "Stuart Cook";
      homepage = "http://code.haskell.org/bimap";
      url = "";
      synopsis = "Bidirectional mapping between two key types";
      description = "A data structure representing a bidirectional mapping between two\nkey types. Each value in the bimap is associated with exactly one\nvalue of the opposite type.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }