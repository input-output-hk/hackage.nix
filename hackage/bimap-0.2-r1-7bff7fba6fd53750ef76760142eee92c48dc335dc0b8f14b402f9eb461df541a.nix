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
    flags = { small-base = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "bimap"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Stuart Cook 2008";
      maintainer = "scook0@gmail.com";
      author = "Stuart Cook";
      homepage = "http://code.haskell.org/bimap";
      url = "";
      synopsis = "Bidirectional mapping between two key types";
      description = "A data structure representing a bidirectional mapping between two\nkey types. Each value in the bimap is associated with exactly one\nvalue of the opposite type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.small-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
      };
    };
  }