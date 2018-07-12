{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "keys";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/keys/";
        url = "";
        synopsis = "Keyed functors and containers";
        description = "Keyed functors and containers";
        buildType = "Simple";
      };
      components = {
        "keys" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad-transformers
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }