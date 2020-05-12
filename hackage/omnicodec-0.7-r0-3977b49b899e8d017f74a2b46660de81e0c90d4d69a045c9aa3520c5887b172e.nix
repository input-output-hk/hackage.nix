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
      identifier = { name = "omnicodec"; version = "0.7"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Magnus Therning, 2012";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "data encoding and decoding command line utilities";
      description = "Two simple command line tools built on sandi\n(http://hackage.haskell.org/package/sandi).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "oenc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }