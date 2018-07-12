{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "linear";
          version = "1.0.1";
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
        "linear" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.distributive
            hsPkgs.hashable
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "doctests" = {
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