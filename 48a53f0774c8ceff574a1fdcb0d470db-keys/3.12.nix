{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "keys";
          version = "3.12";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2016 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/keys/";
        url = "";
        synopsis = "Keyed functors and containers";
        description = "This package provides a bunch of ad hoc classes for accessing parts of a container.\n\nIn practice this package is largely subsumed by the\n<https://hackage.haskell.org/package/lens lens package>,\nbut it is maintained for now as it has much\nsimpler dependencies.";
        buildType = "Simple";
      };
      components = {
        keys = {
          depends  = (([
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.hashable
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.void) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base-orphans;
        };
      };
    }