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
      specVersion = "1.8";
      identifier = { name = "AttoBencode"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Florian Hartwig <florian.j.hartwig@gmail.com>";
      author = "Florian Hartwig <florian.j.hartwig@gmail.com>";
      homepage = "http://bitbucket.org/FlorianHartwig/attobencode";
      url = "";
      synopsis = "Fast Bencode encoding and parsing library";
      description = "A library for encoding and decoding the Bencode data serialisation format\nused by BitTorrent. The focus of this library are good performance (good\nenough to be used in a BitTorrent client) and ease of\nuse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."AttoBencode" or (errorHandler.buildDepError "AttoBencode"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }