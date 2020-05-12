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
      specVersion = "1.2.3";
      identifier = { name = "happy-meta"; version = "0.2.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregard";
      homepage = "";
      url = "";
      synopsis = "Quasi-quoter for Happy parsers";
      description = "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          ];
        buildable = true;
        };
      };
    }