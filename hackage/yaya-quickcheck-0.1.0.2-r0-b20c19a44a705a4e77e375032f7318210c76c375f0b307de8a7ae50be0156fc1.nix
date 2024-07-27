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
      specVersion = "3.0";
      identifier = { name = "yaya-quickcheck"; version = "0.1.0.2"; };
      license = "AGPL-3.0-or-later";
      copyright = "2017 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "QuickCheck testing support for the Yaya recursion scheme library.";
      description = "If you use Yaya in your own code and have tests written using\nQuickCheck, then this library will help you with generating trees,\nverifying type class instances, etc.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."yaya-quickcheck" or (errorHandler.buildDepError "yaya-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }