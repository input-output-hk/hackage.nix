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
      specVersion = "2.2";
      identifier = { name = "text-convert"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2025 Daniel Brice";
      maintainer = "danielbrice@gmail.com";
      author = "Daniel Brice";
      homepage = "https://github.com/friedbrice/text-convert#readme";
      url = "";
      synopsis = "Convert between various textual representations.";
      description = "Convert between various types representing textual data. This library differs\nfrom the similar string-conversions library in that this library exports\nclass methods that are monomorphic in their return type. This enhances\nreadability and aids type inference.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
          ];
          buildable = true;
        };
        "dev" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text-convert" or (errorHandler.buildDepError "text-convert"))
          ];
          buildable = true;
        };
      };
    };
  }