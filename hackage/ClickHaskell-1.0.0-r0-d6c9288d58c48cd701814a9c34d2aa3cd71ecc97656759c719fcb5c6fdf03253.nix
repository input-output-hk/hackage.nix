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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ClickHaskell"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Kovalev Dmitry";
      maintainer = "Kovalev Dmitry";
      author = "Kovalev Dmitry";
      homepage = "https://clickhaskell.dev/";
      url = "";
      synopsis = "ClickHouse driver";
      description = "Small dependency footprint highlevel ClickHouse driver ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
    };
  }