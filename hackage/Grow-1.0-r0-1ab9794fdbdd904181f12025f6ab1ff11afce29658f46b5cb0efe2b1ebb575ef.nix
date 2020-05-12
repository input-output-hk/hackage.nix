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
      identifier = { name = "Grow"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A declarative make-like interpreter.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."definitive-base" or (errorHandler.buildDepError "definitive-base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."definitive-filesystem" or (errorHandler.buildDepError "definitive-filesystem"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."definitive-parser" or (errorHandler.buildDepError "definitive-parser"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }