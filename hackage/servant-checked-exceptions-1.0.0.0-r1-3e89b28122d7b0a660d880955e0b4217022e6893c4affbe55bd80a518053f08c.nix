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
    flags = { buildexample = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-checked-exceptions";
        version = "1.0.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-checked-exceptions";
      url = "";
      synopsis = "Checked exceptions for Servant APIs.";
      description = "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "servant-checked-exceptions-example-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-checked-exceptions" or (errorHandler.buildDepError "servant-checked-exceptions"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.buildexample then true else false;
          };
        "servant-checked-exceptions-example-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-checked-exceptions" or (errorHandler.buildDepError "servant-checked-exceptions"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.buildexample then true else false;
          };
        "servant-checked-exceptions-example-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-checked-exceptions" or (errorHandler.buildDepError "servant-checked-exceptions"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if flags.buildexample then true else false;
          };
        };
      tests = {
        "servant-checked-exceptions-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            ];
          buildable = true;
          };
        "servant-checked-exceptions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-checked-exceptions" or (errorHandler.buildDepError "servant-checked-exceptions"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            ];
          buildable = true;
          };
        };
      };
    }