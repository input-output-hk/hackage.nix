{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fileneglect";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Block thread until a file stops being modified";
        description = "See module for docs";
        buildType = "Simple";
      };
      components = {
        fileneglect = {
          depends  = [
            hsPkgs.base
            hsPkgs.hinotify
            hsPkgs.stm
          ];
        };
      };
    }