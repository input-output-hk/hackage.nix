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
      identifier = { name = "linear-socket"; version = "0.3.3.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2018 Allele Dev";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "";
      url = "";
      synopsis = "Typed sockets";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
      tests = {
        "linear-socket-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."linear-socket" or (errorHandler.buildDepError "linear-socket"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          ];
          buildable = true;
        };
      };
    };
  }