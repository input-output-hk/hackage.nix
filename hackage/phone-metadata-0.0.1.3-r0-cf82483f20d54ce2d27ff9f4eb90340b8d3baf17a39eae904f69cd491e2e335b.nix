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
      identifier = { name = "phone-metadata"; version = "0.0.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "raghu.ugare@gmail.com,\nvijay.hassan@gmail.com";
      author = "Raghu Ugare <raghu.ugare@gmail.com>,\nVijay Anant <vijay.hassan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phonenumber Metadata based on Google's libphonenumber";
      description = "Phonenumber Metadata based on Google's libphonenumber";
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
      };
    }