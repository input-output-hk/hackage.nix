{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lattices";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010-2015 Maximilian Bolingbroke";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Maximilian Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://github.com/phadej/lattices/";
        url = "";
        synopsis = "Fine-grained library for constructing and manipulating lattices";
        description = "In mathematics, a lattice is a partially ordered set in which every two elements have a unique supremum (also called a least upper bound or @join@) and a unique infimum (also called a greatest lower bound or @meet@).";
        buildType = "Simple";
      };
      components = {
        lattices = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }