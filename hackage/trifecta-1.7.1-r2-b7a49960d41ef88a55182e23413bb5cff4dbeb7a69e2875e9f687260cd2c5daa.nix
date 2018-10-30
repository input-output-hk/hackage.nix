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
        version = "1.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2015 Edward A. Kmett";
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
          (hsPkgs.profunctors)
          (hsPkgs.reducers)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.fail);
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.trifecta)
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