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
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "forsyde-deep"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2018 ForSyDe Group, KTH/EECS/ES";
      maintainer = "forsyde-dev@eecs.kth.se";
      author = "Alfonso Acosta, Hendrik Woidt";
      homepage = "https://forsyde.github.io/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\nThis library provides ForSyDe's implementation as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <https://forsyde.github.io/>.\nThis library provides the deep implementation of ForSyDe in Haskell.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.parameterized-data or (pkgs.pkgsBuildBuild.parameterized-data or (errorHandler.setupDepError "parameterized-data")))
        (hsPkgs.pkgsBuildBuild.containers or (pkgs.pkgsBuildBuild.containers or (errorHandler.setupDepError "containers")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.regex-posix or (pkgs.pkgsBuildBuild.regex-posix or (errorHandler.setupDepError "regex-posix")))
        (hsPkgs.pkgsBuildBuild.mtl or (pkgs.pkgsBuildBuild.mtl or (errorHandler.setupDepError "mtl")))
        (hsPkgs.pkgsBuildBuild.syb or (pkgs.pkgsBuildBuild.syb or (errorHandler.setupDepError "syb")))
        (hsPkgs.pkgsBuildBuild.pretty or (pkgs.pkgsBuildBuild.pretty or (errorHandler.setupDepError "pretty")))
        (hsPkgs.pkgsBuildBuild.template-haskell or (pkgs.pkgsBuildBuild.template-haskell or (errorHandler.setupDepError "template-haskell")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.random or (pkgs.pkgsBuildBuild.random or (errorHandler.setupDepError "random")))
        (hsPkgs.pkgsBuildBuild.type-level or (pkgs.pkgsBuildBuild.type-level or (errorHandler.setupDepError "type-level")))
        (hsPkgs.pkgsBuildBuild.HUnit or (pkgs.pkgsBuildBuild.HUnit or (errorHandler.setupDepError "HUnit")))
        (hsPkgs.pkgsBuildBuild.QuickCheck or (pkgs.pkgsBuildBuild.QuickCheck or (errorHandler.setupDepError "QuickCheck")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."parameterized-data" or (errorHandler.buildDepError "parameterized-data"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parameterized-data" or (errorHandler.buildDepError "parameterized-data"))
            (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
            (hsPkgs."forsyde-deep" or (errorHandler.buildDepError "forsyde-deep"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }