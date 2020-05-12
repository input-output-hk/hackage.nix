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
      identifier = { name = "uu-cco-examples"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Utrecht University";
      maintainer = "Atze Dijkstra <atze@uu.nl>";
      author = "Stefan Holdermans <stefan@holdermans.nl>";
      homepage = "https://github.com/UU-ComputerScience/uu-cco";
      url = "";
      synopsis = "Utilities for compiler construction: example programs";
      description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "uu-cco-parse-arith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-parse-arithbool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-pp-arith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-pp-arithbool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-eval-arith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-eval-arithbool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-interp-arith" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-interp-arithbool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-tc-arithbool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        "uu-cco-pp-aterm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
            ];
          buildable = true;
          };
        };
      };
    }