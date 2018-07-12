{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "multipass";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/multipass/";
        url = "";
        synopsis = "Folding data with multiple named passes";
        description = "Folding data with multiple named passes";
        buildType = "Simple";
      };
      components = {
        "multipass" = {
          depends  = [
            hsPkgs.ghc-prim
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.keys
            hsPkgs.math-functions
            hsPkgs.newtype
            hsPkgs.unordered-containers
          ];
        };
      };
    }