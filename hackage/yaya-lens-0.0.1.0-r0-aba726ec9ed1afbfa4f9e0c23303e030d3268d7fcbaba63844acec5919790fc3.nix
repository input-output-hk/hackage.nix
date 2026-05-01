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
      identifier = { name = "yaya-lens"; version = "0.0.1.0"; };
      license = "(AGPL-3.0-only WITH Universal-FOSS-exception-1.0 OR LicenseRef-commercial)";
      copyright = "2017 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Total recursion schemes.";
      description = "Recursion schemes allow you to separate recursion from your\nbusiness logic – making your own operations simpler, more modular,\nand less error-prone. This library also provides tools for\ncombining your operations in ways that reduce the number of passes\nover your data and is designed to encourage total (i.e.,\nsuccessfully terminating) functions.";
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
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."yaya" or (errorHandler.buildDepError "yaya"))
        ] ++ pkgs.lib.optional (flags.verify-no-recursion) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."yaya-lens" or (errorHandler.buildDepError "yaya-lens"))
          ] ++ pkgs.lib.optional (flags.verify-no-recursion) (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"));
          buildable = true;
        };
      };
    };
  }