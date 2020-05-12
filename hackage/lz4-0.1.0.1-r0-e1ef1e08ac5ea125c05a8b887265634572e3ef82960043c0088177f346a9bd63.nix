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
      identifier = { name = "lz4"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "http://github.com/mwotton/lz4hs";
      url = "";
      synopsis = "Haskell bindings to the lz4 compression library";
      description = "lz4 is a fast compression library, and can be found at\nhttp://code.google.com/p/lz4/\na version that adds a C library can be found at\nhttps://github.com/mwotton/lz4";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."lz4" or (errorHandler.sysDepError "lz4")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."lz4" or (errorHandler.buildDepError "lz4"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec-shouldbe" or (errorHandler.buildDepError "hspec-shouldbe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          libs = [ (pkgs."lz4" or (errorHandler.sysDepError "lz4")) ];
          buildable = true;
          };
        };
      };
    }