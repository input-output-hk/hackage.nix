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
      identifier = { name = "text-manipulate"; version = "0.3.1.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2014-2022 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/text-manipulate";
      url = "";
      synopsis = "Case conversion, word boundary manipulation, and textual subjugation.";
      description = "Manipulate identifiers and structurally non-complex pieces\nof text by delimiting word boundaries via a combination of whitespace,\ncontrol-characters, and case-sensitivity.\n\nHas support for common idioms like casing of programmatic variable names,\ntaking, dropping, and splitting by word, and modifying the first character\nof a piece of text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-manipulate" or (errorHandler.buildDepError "text-manipulate"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-manipulate" or (errorHandler.buildDepError "text-manipulate"))
            ];
          buildable = true;
          };
        };
      };
    }