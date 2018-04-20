{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "edit-lenses";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel@wagner-home.com";
        author = "Daniel Wagner";
        homepage = "";
        url = "";
        synopsis = "Symmetric, stateful edit lenses";
        description = "An implementation of the ideas of the paper /Edit Lenses/,\navailable at <http://dmwit.com/papers/201107EL.pdf>.";
        buildType = "Simple";
      };
      components = {
        edit-lenses = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.lattices
            hsPkgs.mtl
          ];
        };
      };
    }