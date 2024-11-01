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
      specVersion = "1.12";
      identifier = { name = "shake-plus"; version = "0.0.2.2"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Re-export of Shake using well-typed paths and ReaderT.";
      description = "Re-export of Shake using well-typed paths and ReaderT. This is an early release so some things may be missing or broken but so far the conveniences have been worth it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."within" or (errorHandler.buildDepError "within"))
        ];
        buildable = true;
      };
    };
  }