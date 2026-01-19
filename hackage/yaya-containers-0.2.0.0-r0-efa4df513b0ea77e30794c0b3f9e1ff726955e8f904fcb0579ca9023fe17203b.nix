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
    flags = { noisy-deprecations = true; verify-no-recursion = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "yaya-containers"; version = "0.2.0.0"; };
      license = "(AGPL-3.0-only WITH Universal-FOSS-exception-1.0 OR LicenseRef-commercial)";
      copyright = "2024 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Pattern functors and instances for types in the containers package.";
      description = "";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
        ] ++ pkgs.lib.optional (flags.verify-no-recursion) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."yaya-containers" or (errorHandler.buildDepError "yaya-containers"))
          ] ++ pkgs.lib.optional (flags.verify-no-recursion) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
          buildable = true;
        };
      };
    };
  }