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
      identifier = { name = "synt"; version = "0.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Brent Lintner <brent.lintner@gmail.com>";
      author = "Brent Lintner <brent.lintner@gmail.com>";
      homepage = "http://github.com/brentlintner/synt";
      url = "";
      synopsis = "Similar code analysis.";
      description = "Calculate percentage of similarity between two pieces of code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          (hsPkgs."argparser" or (errorHandler.buildDepError "argparser"))
        ];
        buildable = true;
      };
      exes = {
        "synt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."argparser" or (errorHandler.buildDepError "argparser"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."Synt" or (errorHandler.buildDepError "Synt"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."argparser" or (errorHandler.buildDepError "argparser"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          ];
          buildable = true;
        };
      };
    };
  }