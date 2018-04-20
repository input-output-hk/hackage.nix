{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "rosezipper";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Iavor S. Diatchki <iavor.diatchki@gmail.com>";
        author = "Krasimir Angelov, Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "Generic zipper implementation for Data.Tree";
        description = "A Haskell datastructure for working with locations in\ntrees or forests.";
        buildType = "Simple";
      };
      components = {
        rosezipper = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }