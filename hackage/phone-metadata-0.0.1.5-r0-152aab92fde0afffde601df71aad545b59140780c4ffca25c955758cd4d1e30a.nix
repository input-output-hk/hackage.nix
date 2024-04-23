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
      identifier = { name = "phone-metadata"; version = "0.0.1.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "raghu.ugare@gmail.com,\nvijay.hassan@gmail.com";
      author = "Raghu Ugare <raghu.ugare@gmail.com>,\nVijay Anant <vijay.hassan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phonenumber Metadata - NOTE: this is now deprecated!";
      description = "Phonenumber Metadata - NOTE: this is now deprecated!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."phone-metadata" or (errorHandler.buildDepError "phone-metadata"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }