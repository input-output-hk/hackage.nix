{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atomic-primops-vector";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "peter.p.fogg@gmail.com";
        author = "Peter Fogg";
        homepage = "";
        url = "";
        synopsis = "Atomic operations on Data.Vector types";
        description = "";
        buildType = "Simple";
      };
      components = {
        atomic-primops-vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.atomic-primops
            hsPkgs.primitive
          ];
        };
        tests = {
          test-atomic-primops-vector = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.atomic-primops-vector
            ];
          };
        };
      };
    }