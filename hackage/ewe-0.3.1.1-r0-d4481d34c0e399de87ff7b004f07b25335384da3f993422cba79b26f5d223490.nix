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
      specVersion = "1.8";
      identifier = { name = "ewe"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fcardona@eafit.edu.co";
      author = "Juan Francisco Cardona McCormick";
      homepage = "http://github.com/jfcmacro/ewe";
      url = "";
      synopsis = "An interpreter for EWE programming language";
      description = "A Haskell implementation of the EWE programming language originally created and developed by Kent D. Lee. EWE is an extension of the RAM programming language. RAM was created by Sethi. This is use for academic purpose only.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.uuagc-cabal or (pkgs.pkgsBuildBuild.uuagc-cabal or (errorHandler.setupDepError "uuagc-cabal")))
        (hsPkgs.pkgsBuildBuild.uulib or (pkgs.pkgsBuildBuild.uulib or (errorHandler.setupDepError "uulib")))
        (hsPkgs.pkgsBuildBuild.uuagc or (pkgs.pkgsBuildBuild.uuagc or (errorHandler.setupDepError "uuagc")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      exes = {
        "ewe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.pkgsBuildBuild.uuagc.components.exes.uuagc or (pkgs.pkgsBuildBuild.uuagc or (errorHandler.buildToolDepError "uuagc:uuagc")))
          ];
          buildable = true;
        };
      };
    };
  }