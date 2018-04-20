{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "linear";
          version = "1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/linear/";
        url = "";
        synopsis = "Linear Algebra";
        description = "Types and combinators for linear algebra on free vector spaces";
        buildType = "Custom";
      };
      components = {
        linear = {
          depends  = [
            hsPkgs.base-orphans
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.distributive
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.reflection
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.lens
              hsPkgs.simple-reflect
            ];
          };
        };
      };
    }