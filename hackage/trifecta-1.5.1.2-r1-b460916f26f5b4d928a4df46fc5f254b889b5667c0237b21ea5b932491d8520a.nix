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
      specVersion = "1.10";
      identifier = {
        name = "trifecta";
        version = "1.5.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/trifecta/";
      url = "";
      synopsis = "A modern parser combinator library with convenient diagnostics";
      description = "A modern parser combinator library with slicing and Clang-style colored diagnostics";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.charset)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.fingertree)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.reducers)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
        "quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsers)
            (hsPkgs.QuickCheck)
            (hsPkgs.trifecta)
          ];
        };
      };
    };
  }