{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dawg";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/dawg";
        url = "";
        synopsis = "Directed acyclic word graphs";
        description = "The library implements /directed acyclic word graphs/ (DAWGs), which can\nbe also interpreted as /minimal acyclic finite-state automata/.";
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