{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "feldspar-language"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2014 Emil Axelsson, Peter Jonsson,\nAnders Persson, Josef Svenningsson\nCopyright (c) 2012 Emil Axelsson, Gergely Dévai,\nAnders Persson, Josef Svenningsson\nCopyright (c) 2009-2011, ERICSSON AB";
      maintainer = "Emil Axelsson <emax@chalmers.se>,\nAnders Persson <anders.cj.persson@gmail.com>";
      author = "Functional programming group at Chalmers University of Technology";
      homepage = "http://feldspar.github.com";
      url = "";
      synopsis = "A functional embedded language for DSP and parallelism";
      description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-hash)
          (hsPkgs.data-lens)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.patch-combinators)
          (hsPkgs.syntactic)
          (hsPkgs.tagged)
          (hsPkgs.tuple)
          (hsPkgs.monad-par)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.data-default)
          ];
        };
      tests = {
        "range" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        "semantics" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        "decoration" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.utf8-string)
            ];
          };
        "tutorial" = {
          depends = [
            (hsPkgs.feldspar-language)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }