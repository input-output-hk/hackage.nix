{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
          (hsPkgs."plugins-multistage" or ((hsPkgs.pkgs-errors).buildDepError "plugins-multistage"))
          (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          ];
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."gcc_s" or ((hsPkgs.pkgs-errors).sysDepError "gcc_s"));
        buildable = true;
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-compiler"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "callconv" = {
          depends = [
            (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-compiler"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "crc" = {
          depends = [
            (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-compiler"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }