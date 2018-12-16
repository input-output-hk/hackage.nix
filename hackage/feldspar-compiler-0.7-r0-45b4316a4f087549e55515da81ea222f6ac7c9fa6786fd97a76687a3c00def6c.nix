{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "feldspar-compiler";
        version = "0.7";
      };
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
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.ghc-paths)
          (hsPkgs.syntactic)
          (hsPkgs.plugins-multistage)
          (hsPkgs.feldspar-language)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
          (hsPkgs.plugins)
          (hsPkgs.data-default)
          (hsPkgs.storable-tuple)
          (hsPkgs.storable-record)
        ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."gcc_s");
      };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.feldspar-compiler)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
        "callconv" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.feldspar-compiler)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "crc" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.feldspar-compiler)
            (hsPkgs.data-default)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }