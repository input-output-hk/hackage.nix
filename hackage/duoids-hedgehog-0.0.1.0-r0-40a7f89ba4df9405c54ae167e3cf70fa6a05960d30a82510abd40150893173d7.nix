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
      identifier = { name = "duoids-hedgehog"; version = "0.0.1.0"; };
      license = "(AGPL-3.0-only WITH Universal-FOSS-exception-1.0 OR AGPL-3.0-only OR LicenseRef-commercial)";
      copyright = "2024 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/duoids#readme";
      url = "";
      synopsis = "Unifying parallel and sequential operations";
      description = "Duoids relate a pair of monoids, where one can be seen as\n“parallel” and the other “sequential”.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
        (hsPkgs.pkgsBuildBuild.no-recursion or (pkgs.pkgsBuildBuild.no-recursion or (errorHandler.setupDepError "no-recursion")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"))
          (hsPkgs."duoids" or (errorHandler.buildDepError "duoids"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
        ];
        buildable = true;
      };
      tests = {
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"))
            (hsPkgs."duoids-hedgehog" or (errorHandler.buildDepError "duoids-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."duoids-hedgehog" or (errorHandler.buildDepError "duoids-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }