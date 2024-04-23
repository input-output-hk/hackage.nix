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
      identifier = {
        name = "terraform-http-backend-pass";
        version = "0.1.0.0";
      };
      license = "LicenseRef-AGPL";
      copyright = "2021 Akshay Mankar";
      maintainer = "itsakshaymankar@gmail.com";
      author = "Akshay Mankar";
      homepage = "https://github.com/akshaymankar/terraform-http-backend-pass#readme";
      url = "";
      synopsis = "HTTP backend to store terraform state using pass and git";
      description = "Please see the README on GitHub at <https://github.com/akshaymankar/terraform-http-backend-pass#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
      exes = {
        "terraform-http-backend-pass" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."terraform-http-backend-pass" or (errorHandler.buildDepError "terraform-http-backend-pass"))
          ];
          buildable = true;
        };
      };
    };
  }