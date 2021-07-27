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
      specVersion = "2.4";
      identifier = { name = "polynomial-algebra"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "https://github.com/bkomuves/polynomial-algebra";
      url = "";
      synopsis = "Multivariate polynomial rings";
      description = "Multivariate and univariate polynomial rings, with several different representations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."compact-word-vectors" or (errorHandler.buildDepError "compact-word-vectors"))
          ];
        buildable = true;
        };
      };
    }