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
      identifier = { name = "base58-bytestring"; version = "0.0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Philippe Laprade, Jean-Pierre Rupp";
      homepage = "https://bitbucket.org/s9gf4ult/base58-bytestring";
      url = "";
      synopsis = "Implementation of BASE58 transcoding for ByteStrings";
      description = "Implementation of BASE58 transcoding copy-pasted from\nhaskoin package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base58-bytestring" or (errorHandler.buildDepError "base58-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quickcheck-assertions" or (errorHandler.buildDepError "quickcheck-assertions"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }