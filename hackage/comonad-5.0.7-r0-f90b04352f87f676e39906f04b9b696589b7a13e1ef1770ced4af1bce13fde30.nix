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
    flags = {
      test-doctests = true;
      containers = true;
      distributive = true;
      indexed-traversable = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "comonad"; version = "5.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2014 Edward A. Kmett,\nCopyright (C) 2004-2008 Dave Menendez";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/comonad/";
      url = "";
      synopsis = "Comonads";
      description = "Comonads.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (flags.containers) (hsPkgs."containers" or (errorHandler.buildDepError "containers"))) ++ pkgs.lib.optional (flags.distributive) (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))) ++ pkgs.lib.optional (flags.indexed-traversable) (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = pkgs.lib.optionals (!!flags.test-doctests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = if !flags.test-doctests then false else true;
        };
      };
    };
  }