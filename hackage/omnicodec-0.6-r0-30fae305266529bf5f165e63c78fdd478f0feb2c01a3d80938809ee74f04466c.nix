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
      specVersion = "1.6";
      identifier = { name = "omnicodec"; version = "0.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Magnus Therning, 2012";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "data encoding and decoding command line utilities";
      description = "Two simple command line tools built on sandi.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            ];
          buildable = true;
          };
        "oenc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            ];
          buildable = true;
          };
        };
      };
    }