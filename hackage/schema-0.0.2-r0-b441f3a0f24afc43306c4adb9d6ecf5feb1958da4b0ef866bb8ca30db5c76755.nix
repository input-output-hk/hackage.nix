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
      identifier = { name = "schema"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2016-2018, Iphigenia Df";
      maintainer = "Iphigenia Df <iphydf@gmail.com>";
      author = "Iphigenia Df <iphydf@gmail.com>";
      homepage = "https://toktok.github.io/";
      url = "";
      synopsis = "Encoding-independent schemas for Haskell data types.";
      description = "A Haskell implementation of encoding-independent schemas.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."msgpack-binary" or (errorHandler.buildDepError "msgpack-binary"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."schema" or (errorHandler.buildDepError "schema"))
            ];
          buildable = true;
          };
        };
      };
    }