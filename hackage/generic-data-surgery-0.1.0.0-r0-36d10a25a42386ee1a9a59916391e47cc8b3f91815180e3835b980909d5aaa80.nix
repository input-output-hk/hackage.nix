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
      identifier = { name = "generic-data-surgery"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/generic-data-surgery#readme";
      url = "";
      synopsis = "Surgery for generic data types";
      description = "Transform data types before passing them to generic functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "surgery-test" = {
          depends = [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."generic-data-surgery" or (errorHandler.buildDepError "generic-data-surgery"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "lens-surgery-test" = {
          depends = [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."generic-data-surgery" or (errorHandler.buildDepError "generic-data-surgery"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = false;
          };
        };
      };
    }