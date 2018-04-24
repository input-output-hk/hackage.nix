{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lattices";
          version = "1.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010-2015 Maximilian Bolingbroke";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Maximilian Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://github.com/phadej/lattices/";
        url = "";
        synopsis = "Fine-grained library for constructing and manipulating lattices";
        description = "In mathematics, a lattice is a partially ordered set in which every two\nelements @x@ and @y@ have a unique supremum (also called a least upper bound, join, or @x /\\\\ y@)\nand a unique infimum (also called a greatest lower bound, meet, or @x \\\\/ y@).\n\nThis package provide type-classes for different lattice types, as well\nas a class for the partial order.";
        buildType = "Simple";
      };
      components = {
        lattices = {
          depends  = (([
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.tagged
            hsPkgs.unordered-containers
            hsPkgs.semigroupoids
            hsPkgs.universe-base
            hsPkgs.universe-reverse-instances
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.10")) [
            hsPkgs.void
            hsPkgs.transformers
          ]) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.5")) hsPkgs.ghc-prim;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.universe-instances-base
              hsPkgs.lattices
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }