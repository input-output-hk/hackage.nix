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
      specVersion = "1.9.2";
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.parameterized-data or (pkgs.buildPackages.parameterized-data or (errorHandler.buildToolDepError "parameterized-data")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.buildToolDepError "containers")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.regex-posix or (pkgs.buildPackages.regex-posix or (errorHandler.buildToolDepError "regex-posix")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or (errorHandler.buildToolDepError "mtl")))
        (hsPkgs.buildPackages.syb or (pkgs.buildPackages.syb or (errorHandler.buildToolDepError "syb")))
        (hsPkgs.buildPackages.pretty or (pkgs.buildPackages.pretty or (errorHandler.buildToolDepError "pretty")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (errorHandler.buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.random or (pkgs.buildPackages.random or (errorHandler.buildToolDepError "random")))
        (hsPkgs.buildPackages.type-level or (pkgs.buildPackages.type-level or (errorHandler.buildToolDepError "type-level")))
        (hsPkgs.buildPackages.HUnit or (pkgs.buildPackages.HUnit or (errorHandler.buildToolDepError "HUnit")))
        (hsPkgs.buildPackages.QuickCheck or (pkgs.buildPackages.QuickCheck or (errorHandler.buildToolDepError "QuickCheck")))
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