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
    flags = { noisy-deprecations = true; lint = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "algebraic-graph-duoids"; version = "0.0.2.0"; };
      license = "(AGPL-3.0-only WITH Universal-FOSS-exception-1.0 OR AGPL-3.0-only OR LicenseRef-commercial)";
      copyright = "2024 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/duoids#readme";
      url = "";
      synopsis = "Duoid instances for the algebraic-graphs package";
      description = "Algebraic graphs are an interesting example of duoids. This\nprovides the relevant instances.";
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
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."duoids" or (errorHandler.buildDepError "duoids"))
        ] ++ pkgs.lib.optional (flags.lint) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
        buildable = true;
      };
      tests = {
        "laws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."algebraic-graph-duoids" or (errorHandler.buildDepError "algebraic-graph-duoids"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."duoids-hedgehog" or (errorHandler.buildDepError "duoids-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ] ++ pkgs.lib.optional (flags.lint) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."algebraic-graph-duoids" or (errorHandler.buildDepError "algebraic-graph-duoids"))
          ] ++ pkgs.lib.optional (flags.lint) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
          buildable = true;
        };
      };
    };
  }