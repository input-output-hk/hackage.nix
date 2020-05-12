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
    flags = { test-doctest = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "operate-do"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2016 uecmma";
      maintainer = "developer@mma.club.uec.ac.jp";
      author = "uecmma";
      homepage = "https://github.com/uecmma/haskell-library-collections/tree/master/operate-do";
      url = "";
      synopsis = "Simple project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."operate-do" or (errorHandler.buildDepError "operate-do"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doc-test" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctest)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            ];
          buildable = if !flags.test-doctest then false else true;
          };
        };
      };
    }