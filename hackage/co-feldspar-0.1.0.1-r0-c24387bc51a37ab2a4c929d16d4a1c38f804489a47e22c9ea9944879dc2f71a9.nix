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
      specVersion = "1.10";
      identifier = { name = "co-feldspar"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Markus Aronsson, Emil Axelsson";
      maintainer = "mararon@chalmers.se";
      author = "Markus";
      homepage = "";
      url = "";
      synopsis = "Hardware software co-design Feldspar";
      description = "An implementation of the Feldspar EDSL with a focus on\nhardware software co-design and resource-awareness.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."minisat" or (errorHandler.buildDepError "minisat"))
          (hsPkgs."simple-smt" or (errorHandler.buildDepError "simple-smt"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          (hsPkgs."language-vhdl" or (errorHandler.buildDepError "language-vhdl"))
          (hsPkgs."hardware-edsl" or (errorHandler.buildDepError "hardware-edsl"))
          (hsPkgs."imperative-edsl" or (errorHandler.buildDepError "imperative-edsl"))
          (hsPkgs."signals" or (errorHandler.buildDepError "signals"))
          ];
        buildable = true;
        };
      };
    }