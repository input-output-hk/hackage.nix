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
    flags = { force-unaligned = false; force-aligned = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "persist"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>,\nMichael Sloan <sloan@fpcomplete.com>,\nFP Complete,\nLennart Kolmodin <kolmodin@dtek.chalmers.se>,\nGalois Inc.,\nLemmih <lemmih@gmail.com>,\nBas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/minad/persist";
      url = "";
      synopsis = "Minimal serialization library with focus on performance";
      description = "A binary serialization library with focus on performance similar to store and cereal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-persist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."persist" or (errorHandler.buildDepError "persist"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }