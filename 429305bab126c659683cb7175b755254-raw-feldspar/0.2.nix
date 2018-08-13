{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "raw-feldspar";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Anders Persson, Anton Ekblad, Emil Axelsson,\nJosef Svenningsson, Koen Claessen, Markus Aronsson,\nMáté Karácsony\nCopyright (c) 2015 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/Feldspar/raw-feldspar";
      url = "";
      synopsis = "Resource-Aware Feldspar";
      description = "An implementation of the Feldspar EDSL with focus on\nresource-awareness.\n\nExamples can be found in the @examples/@ directory. The\nfiles named \"TutN_...\" can be studied as a tutorial (to be\nread in ascending order).\n\nFor more information, see the README:\n<https://github.com/Feldspar/raw-feldspar/blob/master/README.md>\n\nTo see which GHC versions RAW-Feldspar can be built with,\nconsult the Travis status page:\n<https://travis-ci.org/Feldspar/raw-feldspar>";
      buildType = "Simple";
    };
    components = {
      "raw-feldspar" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.data-hash)
          (hsPkgs.imperative-edsl)
          (hsPkgs.language-c-quote)
          (hsPkgs.mtl)
          (hsPkgs.operational-alacarte)
          (hsPkgs.prelude-edsl)
          (hsPkgs.syntactic)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "NumSimpl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.raw-feldspar)
            (hsPkgs.syntactic)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
        "Compilation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.raw-feldspar)
          ];
        };
        "Semantics" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.raw-feldspar)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
        "Examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.raw-feldspar)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }