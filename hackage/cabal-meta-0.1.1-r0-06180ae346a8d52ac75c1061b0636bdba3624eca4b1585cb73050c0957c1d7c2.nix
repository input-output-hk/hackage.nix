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
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal-meta"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "build multiple packages at once";
      description = "build multiple packages at once";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "cabal-meta" = {
          depends = [
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          ];
          buildable = true;
        };
      };
    };
  }