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
      identifier = { name = "uuid-bytes"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "Zachary Churchill";
      homepage = "";
      url = "";
      synopsis = "UUID parsing using byteverse packages";
      description = "This packages provides `bytesmith` parsers and `byteslice` encoders for 128bit UUIDs in hexadecimal format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."small-bytearray-builder" or (errorHandler.buildDepError "small-bytearray-builder"))
          (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."uuid-bytes" or (errorHandler.buildDepError "uuid-bytes"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            ];
          buildable = true;
          };
        };
      };
    }