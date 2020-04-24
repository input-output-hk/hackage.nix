{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.parameterized-data or (pkgs.buildPackages.parameterized-data or ((hsPkgs.pkgs-errors).buildToolDepError "parameterized-data")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or ((hsPkgs.pkgs-errors).buildToolDepError "containers")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.regex-posix or (pkgs.buildPackages.regex-posix or ((hsPkgs.pkgs-errors).buildToolDepError "regex-posix")))
        (hsPkgs.buildPackages.mtl or (pkgs.buildPackages.mtl or ((hsPkgs.pkgs-errors).buildToolDepError "mtl")))
        (hsPkgs.buildPackages.syb or (pkgs.buildPackages.syb or ((hsPkgs.pkgs-errors).buildToolDepError "syb")))
        (hsPkgs.buildPackages.pretty or (pkgs.buildPackages.pretty or ((hsPkgs.pkgs-errors).buildToolDepError "pretty")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or ((hsPkgs.pkgs-errors).buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or ((hsPkgs.pkgs-errors).buildToolDepError "process")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.random or (pkgs.buildPackages.random or ((hsPkgs.pkgs-errors).buildToolDepError "random")))
        (hsPkgs.buildPackages.type-level or (pkgs.buildPackages.type-level or ((hsPkgs.pkgs-errors).buildToolDepError "type-level")))
        (hsPkgs.buildPackages.HUnit or (pkgs.buildPackages.HUnit or ((hsPkgs.pkgs-errors).buildToolDepError "HUnit")))
        (hsPkgs.buildPackages.QuickCheck or (pkgs.buildPackages.QuickCheck or ((hsPkgs.pkgs-errors).buildToolDepError "QuickCheck")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          (hsPkgs."parameterized-data" or ((hsPkgs.pkgs-errors).buildDepError "parameterized-data"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parameterized-data" or ((hsPkgs.pkgs-errors).buildDepError "parameterized-data"))
            (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
            (hsPkgs."forsyde-deep" or ((hsPkgs.pkgs-errors).buildDepError "forsyde-deep"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }