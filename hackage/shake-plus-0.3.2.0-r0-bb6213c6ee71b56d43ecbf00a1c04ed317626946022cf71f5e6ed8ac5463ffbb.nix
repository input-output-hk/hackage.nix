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
      identifier = { name = "shake-plus"; version = "0.3.2.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "https://gitlab.com/shake-plus/shake-plus";
      url = "";
      synopsis = "Re-export of Shake using well-typed paths and ReaderT.";
      description = "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions.";
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
        ];
        buildable = true;
      };
    };
  }