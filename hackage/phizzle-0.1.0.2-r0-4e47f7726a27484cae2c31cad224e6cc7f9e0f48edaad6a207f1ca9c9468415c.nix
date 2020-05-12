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
      identifier = { name = "phizzle"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "2015 b-mcg";
      maintainer = "bmcg0890@gmail.com";
      author = "b-mcg";
      homepage = "http://github.com/b-mcg/phizzle#readme";
      url = "";
      synopsis = "Library for checking if a given link is in a phishtank json file";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          ];
        buildable = true;
        };
      tests = {
        "phizzle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."phizzle" or (errorHandler.buildDepError "phizzle"))
            ];
          buildable = true;
          };
        };
      };
    }