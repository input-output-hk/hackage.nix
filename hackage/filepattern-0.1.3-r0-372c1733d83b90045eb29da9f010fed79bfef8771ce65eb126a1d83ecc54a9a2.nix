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
      specVersion = "1.18";
      identifier = { name = "filepattern"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2022";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>, Evan Rutledge Borden <evan@evan-borden.com>";
      homepage = "https://github.com/ndmitchell/filepattern#readme";
      url = "";
      synopsis = "File path glob-like matching";
      description = "A library for matching files using patterns such as @\\\"src\\/**\\/*.png\\\"@ for all @.png@ files\nrecursively under the @src@ directory. Features:\n\n* All matching is /O(n)/. Most functions precompute some information given only one argument.\n\n* See \"System.FilePattern\" and @?==@ simple matching and semantics.\n\n* Use @match@ and @substitute@ to extract suitable\nstrings from the @*@ and @**@ matches, and substitute them back into other patterns.\n\n* Use @step@ and @matchMany@ to perform bulk matching\nof many patterns against many paths simultaneously.\n\n* Use \"System.FilePattern.Directory\" to perform optimised directory traverals using patterns.\n\nOriginally taken from the <https://hackage.haskell.org/package/shake Shake library>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
      tests = {
        "filepattern-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }