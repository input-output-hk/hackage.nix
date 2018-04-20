{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "compressed";
          version = "3.10";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/compressed/";
        url = "";
        synopsis = "Compressed containers and reducers";
        description = "Compressed containers and reducers";
        buildType = "Simple";
      };
      components = {
        compressed = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fingertree
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.comonad
            hsPkgs.pointed
            hsPkgs.keys
            hsPkgs.reducers
          ];
        };
      };
    }