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
      identifier = { name = "scanner-attoparsec"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Yuras Shumovich 2016";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/scanner-attoparsec";
      url = "";
      synopsis = "Inject attoparsec parser with backtracking into non-backtracking scanner";
      description = "Backtracking kills performance, so scanner package doesn't support it.\nBut sometimes you just need it. E.g. you have a mostly non-backtracking\nparser, but a small bit of its grammar is too complex to transform it\nto non-backtracking form. In that case you can inject a backtracking\nattoparsec parser into otherwise non-backtracking scanner.\n\nSee also http://hackage.haskell.org/scanner";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."scanner" or (errorHandler.buildDepError "scanner"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."scanner" or (errorHandler.buildDepError "scanner"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scanner-attoparsec" or (errorHandler.buildDepError "scanner-attoparsec"))
          ];
          buildable = true;
        };
      };
    };
  }