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
      identifier = { name = "prettyprinter-interp"; version = "0.2.0.0"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2022-2023, Peter Lebbing";
      maintainer = "peter@digitalbrains.com";
      author = "Peter Lebbing";
      homepage = "https://github.com/DigitalBrains1/prettyprinter-interp";
      url = "";
      synopsis = "Efficient interpolation for Prettyprinter";
      description = "This package provides efficient interpolation\nof @[string-interpolate](https://hackage.haskell.org/package/string-interpolate)@\nquasi quoters when used\nwith @[prettyprinter](https://hackage.haskell.org/package/prettyprinter)@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-interp" or (errorHandler.buildDepError "prettyprinter-interp"))
            (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }