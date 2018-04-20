{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lattices";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "";
        url = "";
        synopsis = "Fine-grained library for constructing and manipulating lattices";
        description = "";
        buildType = "Simple";
      };
      components = {
        lattices = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }