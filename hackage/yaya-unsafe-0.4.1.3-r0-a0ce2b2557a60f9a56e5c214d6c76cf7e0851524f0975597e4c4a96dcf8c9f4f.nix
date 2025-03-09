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
    flags = { noisy-deprecations = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "yaya-unsafe"; version = "0.4.1.3"; };
      license = "AGPL-3.0-or-later";
      copyright = "2017 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Non-total extensions to the Yaya recursion scheme library.";
      description = "Yaya is designed as a _total_ library. However, it is often\nexpedient to use partial operations in some cases, and this package\nextends Yaya to provide those operations. It’s in a separate\npackage (and modules) in order to make sure its use is very\nintentional and also relatively obvious to those reading your code.\nIt’s recommended that you import these modules qualified and, in\nparticular, all the type class instances here have been pulled into\na separate module to avoid accidentally bringing them into scope.";
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
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."yaya-unsafe" or (errorHandler.buildDepError "yaya-unsafe"))
          ];
          buildable = true;
        };
        "yaya-unsafe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
            (hsPkgs."yaya-hedgehog" or (errorHandler.buildDepError "yaya-hedgehog"))
            (hsPkgs."yaya-unsafe" or (errorHandler.buildDepError "yaya-unsafe"))
          ];
          buildable = true;
        };
      };
    };
  }