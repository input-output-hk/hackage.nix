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
    flags = { release = false; dev = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "ClickHaskell"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Kovalev Dmitry";
      maintainer = "Kovalev Dmitry";
      author = "Kovalev Dmitry";
      homepage = "https://kovalevdima.github.io/ClickHaskell/";
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
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
        ];
        buildable = true;
      };
    };
  }