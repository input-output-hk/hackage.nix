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
      identifier = { name = "quipper-demos"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine,\nNeil J. Ross, Peter Selinger, Benoit Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Miscellaneous code snippets that illustrate various Quipper features.";
      description = "This package provides some code snippets that illustrate various\nQuipper features.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.quipper-cabal or (pkgs.buildPackages.quipper-cabal or (errorHandler.setupDepError "quipper-cabal")))
        ];
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "And_gate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "And_list" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "And_rev" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Arith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "BoxExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Box" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Classical" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Comments" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "CountAccess" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Decompose_test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "DynamicLifting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "ErrorCircuit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Example1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Example2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Example3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Example4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "GPhase" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "HelloWorld" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Infinite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "MultiControlledNot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "NamedGate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "NBox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "NoControl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "OptimTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "ParseNodeRoot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "PhaseTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "QEC" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "QFTAdder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "QFT" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "QRAM" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "QuantumIfTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Reverse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "SimpleOracleSimulation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "SimulationTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "SynthesisTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."newsynth" or (errorHandler.buildDepError "newsynth"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "TeleportGeneric" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Teleport" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "TemplateTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "Testing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "TimeStep-binary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "TimeStep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "TransformerExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        "WithComputed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
            ];
          buildable = true;
          };
        };
      };
    }