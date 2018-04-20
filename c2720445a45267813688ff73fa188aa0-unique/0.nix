{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unique";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/unique/";
        url = "";
        synopsis = "Fully concurrent unique identifiers";
        description = "Fully concurrent unique identifiers";
        buildType = "Simple";
      };
      components = {
        unique = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.ghc-prim
          ];
        };
      };
    }