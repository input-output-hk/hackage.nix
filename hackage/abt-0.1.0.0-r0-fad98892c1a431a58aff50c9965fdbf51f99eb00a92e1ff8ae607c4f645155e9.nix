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
      identifier = { name = "abt"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jon@jonmsterling.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Abstract binding trees for Haskell";
      description = "A Haskell port of the Carnegie Mellon ABT library (SML), with some improvements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }