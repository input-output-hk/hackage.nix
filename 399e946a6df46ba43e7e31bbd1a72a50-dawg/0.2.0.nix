{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dawg";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/dawg";
        url = "";
        synopsis = "DAWG";
        description = "Directed acyclic word graphs.";
        buildType = "Simple";
      };
      components = {
        dawg = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.vector
            hsPkgs.vector-binary
            hsPkgs.mtl
          ];
        };
      };
    }