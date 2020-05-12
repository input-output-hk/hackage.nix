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
      identifier = { name = "generic-enum"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "An Enum class that fixes some deficiences with Prelude's Enum";
      description = "The default Enum class has a couple of issues that limit it's flexibility namely:\n\n1) The \\\"Enum\\\" type must be always \\\"Int\\\", even when this loses information, such as in\nthe case of \\\"Integer\\\" (due to overflow) and \\\"Rational\\\" (in the case of fractions).\n\n2) \"enumFromTo\" etc like functions can only produce lists, instead of directly producing other\nlist like data types. Aside from effeciency, using a list as an intermediary can lose information also.\n\nThe Enum class this package defines should be largely a drop in replacement for Prelude's Enum,\nwith some minor exceptions detailed in the documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }