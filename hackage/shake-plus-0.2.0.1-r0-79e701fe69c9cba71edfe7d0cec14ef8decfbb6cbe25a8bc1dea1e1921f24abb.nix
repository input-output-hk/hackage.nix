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
      identifier = { name = "shake-plus"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "https://gitlab.com/shake-plus/shake-plus";
      url = "";
      synopsis = "Re-export of Shake using well-typed paths and ReaderT.";
      description = "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions, and better keep track of source and output folders using the Within type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-like" or (errorHandler.buildDepError "path-like"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."within" or (errorHandler.buildDepError "within"))
        ];
        buildable = true;
      };
    };
  }