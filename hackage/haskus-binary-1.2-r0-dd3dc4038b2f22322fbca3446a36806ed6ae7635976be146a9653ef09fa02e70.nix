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
      specVersion = "1.20";
      identifier = { name = "haskus-binary"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2017";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org/system";
      url = "";
      synopsis = "Haskus binary format manipulation";
      description = "A set of types and tools to manipulate binary data, memory, etc. In\nparticular to interface Haskell data types with foreign data types (C\nstructs, unions, enums, etc.).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskus-utils-types" or (errorHandler.buildDepError "haskus-utils-types"))
          (hsPkgs."haskus-utils-data" or (errorHandler.buildDepError "haskus-utils-data"))
          (hsPkgs."haskus-utils" or (errorHandler.buildDepError "haskus-utils"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskus-binary" or (errorHandler.buildDepError "haskus-binary"))
            (hsPkgs."haskus-utils" or (errorHandler.buildDepError "haskus-utils"))
            (hsPkgs."haskus-utils-data" or (errorHandler.buildDepError "haskus-utils-data"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-BitReverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskus-binary" or (errorHandler.buildDepError "haskus-binary"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }