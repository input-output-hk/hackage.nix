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
      specVersion = "1.12";
      identifier = { name = "rrule"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Mitchell Vitez";
      maintainer = "mitchell@vitez.me";
      author = "Mitchell Vitez";
      homepage = "https://github.com/mitchellvitez/rrule#readme";
      url = "";
      synopsis = "Recurrence rule parser and formatter";
      description = "Parser for recurrence rules including formatting back to RFC 5545 recurrence\nrule strings as well as providing English descriptions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "rrule-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rrule" or (errorHandler.buildDepError "rrule"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }