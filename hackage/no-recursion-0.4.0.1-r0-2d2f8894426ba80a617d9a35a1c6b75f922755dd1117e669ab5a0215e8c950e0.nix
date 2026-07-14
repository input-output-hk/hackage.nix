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
      identifier = { name = "no-recursion"; version = "0.4.0.1"; };
      license = "(AGPL-3.0-only WITH Universal-FOSS-exception-1.0 OR LicenseRef-proprietary)";
      copyright = "2024 Greg Pfeil";
      maintainer = "Greg Pfeil <greg@technomadic.org>";
      author = "Greg Pfeil <greg@technomadic.org>";
      homepage = "https://github.com/sellout/no-recursion#readme";
      url = "";
      synopsis = "A GHC plugin to remove support for recursion";
      description = "General recursion can be the cause of a lot of problems. This removes\nrecursion from GHC, allowing you to guarantee you’re using other mechanisms,\nlike recursion schemes.";
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
          (hsPkgs."ghc-compat-plugin" or (errorHandler.buildDepError "ghc-compat-plugin"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ] ++ pkgs.lib.optional (flags.lint && (compiler.isGhc && compiler.version.ge "9.4.2")) (hsPkgs."henforcer" or (errorHandler.buildDepError "henforcer"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-compat-plugin" or (errorHandler.buildDepError "ghc-compat-plugin"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"))
          ] ++ pkgs.lib.optional (flags.lint && (compiler.isGhc && compiler.version.ge "9.4.2")) (hsPkgs."henforcer" or (errorHandler.buildDepError "henforcer"));
          buildable = true;
        };
        "annotations" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-compat-plugin" or (errorHandler.buildDepError "ghc-compat-plugin"))
            (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"))
          ] ++ pkgs.lib.optional (flags.lint && (compiler.isGhc && compiler.version.ge "9.4.2")) (hsPkgs."henforcer" or (errorHandler.buildDepError "henforcer"));
          buildable = true;
        };
        "no-ignore-annotations" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-compat-plugin" or (errorHandler.buildDepError "ghc-compat-plugin"))
            (hsPkgs."no-recursion" or (errorHandler.buildDepError "no-recursion"))
          ] ++ pkgs.lib.optional (flags.lint && (compiler.isGhc && compiler.version.ge "9.4.2")) (hsPkgs."henforcer" or (errorHandler.buildDepError "henforcer"));
          buildable = true;
        };
      };
    };
  }