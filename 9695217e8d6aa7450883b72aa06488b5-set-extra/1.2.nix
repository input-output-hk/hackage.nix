{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "set-extra";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox";
        homepage = "http://src.seereason.com/set-extra";
        url = "";
        synopsis = "Functions that could be added to Data.Set.";
        description = "Functions that could be added to Data.Set.";
        buildType = "Simple";
      };
      components = {
        "set-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.syb
          ];
        };
      };
    }