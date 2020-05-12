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
    flags = { server-side = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yu-auth"; version = "0.1.1.10"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017-2018 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "Auth module for Yu.";
      description = "Helper of auth via SHA for Yu";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."yu-utils" or (errorHandler.buildDepError "yu-utils"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          ];
        buildable = true;
        };
      tests = {
        "test-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yu-utils" or (errorHandler.buildDepError "yu-utils"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."yu-auth" or (errorHandler.buildDepError "yu-auth"))
            ];
          buildable = true;
          };
        "test-auth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yu-auth" or (errorHandler.buildDepError "yu-auth"))
            (hsPkgs."yu-utils" or (errorHandler.buildDepError "yu-utils"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            ];
          buildable = if flags.server-side then false else true;
          };
        };
      };
    }