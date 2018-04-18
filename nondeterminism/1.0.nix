{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "nondeterminism";
          version = "1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Andrei Barbu <andrei@0xab.com>";
        author = "Andrei Barbu <andrei@0xab.com>";
        homepage = "";
        url = "";
        synopsis = "A monad and monad transformer for nondeterministic computations.";
        description = "Nondeterministic computations";
        buildType = "Simple";
      };
      components = {
        nondeterminism = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }