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
      identifier = { name = "nat-optics"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/nat-optics";
      url = "";
      synopsis = "Refinement types for natural numbers with an optics interface";
      description = "Modules:\n\n- \"NatOptics.NonNegative\" includes 0, 1, 2, 3, ...\n- \"NatOptics.Positive\" includes 1, 2, 3, 4, ...\n\nThe modules in this package re-export some optics functions\nto cover basic usage, but you probably also want to import\nthe \"Optics\" module from the `optics` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          ];
        buildable = true;
        };
      tests = {
        "NonNegative" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."nat-optics" or (errorHandler.buildDepError "nat-optics"))
            ];
          buildable = true;
          };
        "Positive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."nat-optics" or (errorHandler.buildDepError "nat-optics"))
            ];
          buildable = true;
          };
        };
      };
    }