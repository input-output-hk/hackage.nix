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
      identifier = { name = "HPhone"; version = "0.0.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "vijay.hassan@gmail.com,\nraghu.ugare@gmail.com";
      author = "Vijay Anant <vijay.hassan@gmail.com>,\nRaghu Ugare <raghu.ugare@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phone number parser and validator - This is now DEPRECATED!";
      description = "Phone number parser and validator - This is now DEPRECATED!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."phone-metadata" or (errorHandler.buildDepError "phone-metadata"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HPhone" or (errorHandler.buildDepError "HPhone"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }