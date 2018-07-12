{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "search";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/search/";
        url = "";
        synopsis = "Infinite search in finite time with Hilbert's epsilon";
        description = "Infinite search in finite time with Hilbert's epsilon";
        buildType = "Custom";
      };
      components = {
        "search" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.profunctors
            hsPkgs.semigroupoids
            hsPkgs.tagged
            hsPkgs.transformers
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.search
            ];
          };
        };
      };
    }