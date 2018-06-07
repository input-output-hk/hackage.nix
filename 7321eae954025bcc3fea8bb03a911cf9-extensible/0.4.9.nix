{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extensible";
          version = "0.4.9";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/extensible";
        url = "";
        synopsis = "Extensible, efficient, optics-friendly data types and effects";
        description = "This package provides a powerful framework to combine and manipulate various types of structures.\n\nSee also <https://www.schoolofhaskell.com/user/fumieval/extensible School of Haskell> for tutorials.";
        buildType = "Simple";
      };
      components = {
        extensible = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.cassava
            hsPkgs.comonad
            hsPkgs.constraints
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.monad-skeleton
            hsPkgs.mtl
            hsPkgs.prettyprinter
            hsPkgs.primitive
            hsPkgs.profunctors
            hsPkgs.QuickCheck
            hsPkgs.semigroups
            hsPkgs.StateVar
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-lift
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          effects = {
            depends  = [
              hsPkgs.base
              hsPkgs.extensible
            ];
          };
          bits = {
            depends  = [
              hsPkgs.base
              hsPkgs.extensible
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }