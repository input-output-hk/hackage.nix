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
      identifier = { name = "hkdf"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      maintainer = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      author = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      homepage = "http://github.com/j1r1k/hkdf";
      url = "";
      synopsis = "Implementation of HKDF (RFC 5869)";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
        ];
        buildable = true;
      };
      tests = {
        "hkdf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."hkdf" or (errorHandler.buildDepError "hkdf"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }