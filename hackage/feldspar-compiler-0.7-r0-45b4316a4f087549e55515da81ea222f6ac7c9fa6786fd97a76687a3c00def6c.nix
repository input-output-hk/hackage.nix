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
      specVersion = "1.12";
      identifier = { name = "feldspar-compiler"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2014 Emil Axelsson, Peter Jonsson,\nAnders Persson, Josef Svenningsson\nCopyright (c) 2012 Emil Axelsson, Gergely Dévai,\nAnders Persson, Josef Svenningsson\nCopyright (c) 2009-2011, ERICSSON AB";
      maintainer = "anders.cj.persson@gmail.com";
      author = "Feldspar group,\nEotvos Lorand University Faculty of Informatics";
      homepage = "http://feldspar.github.com";
      url = "";
      synopsis = "Compiler for the Feldspar language";
      description = "Feldspar (**F**unctional **E**mbedded **L**anguage for **DSP**\nand **PAR**allelism) is an embedded DSL for describing digital\nsignal processing algorithms.\nThis library (FeldsparCompiler) contains a prototype compiler\nthat supports C code generation from programs written in this\nlanguage both according to ANSI C and also targeted to a real\nDSP HW.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."plugins-multistage" or (errorHandler.buildDepError "plugins-multistage"))
          (hsPkgs."feldspar-language" or (errorHandler.buildDepError "feldspar-language"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."storable-tuple" or (errorHandler.buildDepError "storable-tuple"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          ];
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."gcc_s" or (errorHandler.sysDepError "gcc_s"));
        buildable = true;
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."feldspar-language" or (errorHandler.buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or (errorHandler.buildDepError "feldspar-compiler"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "callconv" = {
          depends = [
            (hsPkgs."feldspar-language" or (errorHandler.buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or (errorHandler.buildDepError "feldspar-compiler"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "crc" = {
          depends = [
            (hsPkgs."feldspar-language" or (errorHandler.buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or (errorHandler.buildDepError "feldspar-compiler"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }