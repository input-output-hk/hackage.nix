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
      specVersion = "3.0";
      identifier = { name = "http-exchange"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/http-exchange";
      url = "";
      synopsis = "Perform HTTP Requests";
      description = "Perform HTTP requests. This uses backpack and is agnostic to the backend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."http-interchange" or (errorHandler.buildDepError "http-interchange"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-exchange".components.sublibs.types or (errorHandler.buildDepError "http-exchange:types"))
        ];
        buildable = true;
      };
      sublibs = {
        "types" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          ];
          buildable = true;
        };
        "testdep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."http-exchange".components.sublibs.types or (errorHandler.buildDepError "http-exchange:types"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."http-exchange" or (errorHandler.buildDepError "http-exchange"))
            (hsPkgs."http-interchange" or (errorHandler.buildDepError "http-interchange"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."http-exchange".components.sublibs.testdep or (errorHandler.buildDepError "http-exchange:testdep"))
          ];
          buildable = true;
        };
      };
    };
  }