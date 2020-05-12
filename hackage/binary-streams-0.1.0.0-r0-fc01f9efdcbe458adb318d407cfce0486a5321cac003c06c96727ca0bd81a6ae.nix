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
      identifier = { name = "binary-streams"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jon.petter.bergman@gmail.com";
      author = "Petter Bergman";
      homepage = "http://github.com/jonpetterbergman/binary-streams";
      url = "";
      synopsis = "data serialization/deserialization io-streams library";
      description = "Allow binary serialization/deserialization using io-streams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          ];
        buildable = true;
        };
      tests = {
        "encode-decode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."binary-streams" or (errorHandler.buildDepError "binary-streams"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }