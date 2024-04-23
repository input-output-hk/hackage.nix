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
      specVersion = "2.0";
      identifier = { name = "json2sg"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/sugar#readme";
      url = "";
      synopsis = "Lossy conversion from JSON to Sugar";
      description = "Sugar is an alternative to: JSON, YAML, TOML, et cetera. Please see the README on GitHub at <https://github.com/jxv/sugar#readme>";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "json2sg-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sugar" or (errorHandler.buildDepError "sugar"))
            (hsPkgs."sugar-json" or (errorHandler.buildDepError "sugar-json"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
      exes = {
        "json2sg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json2sg".components.sublibs.json2sg-lib or (errorHandler.buildDepError "json2sg:json2sg-lib"))
          ];
          buildable = true;
        };
      };
      tests = {
        "json2sg-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."sugar" or (errorHandler.buildDepError "sugar"))
            (hsPkgs."sugar-json" or (errorHandler.buildDepError "sugar-json"))
            (hsPkgs."json2sg".components.sublibs.json2sg-lib or (errorHandler.buildDepError "json2sg:json2sg-lib"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }