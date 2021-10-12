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
      identifier = { name = "xml-syntax"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Parse XML from bytes";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array-builder" or (errorHandler.buildDepError "array-builder"))
          (hsPkgs."array-chunks" or (errorHandler.buildDepError "array-chunks"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytebuild" or (errorHandler.buildDepError "bytebuild"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (errorHandler.buildDepError "bytesmith"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."xml-syntax" or (errorHandler.buildDepError "xml-syntax"))
            ];
          buildable = true;
          };
        };
      };
    }