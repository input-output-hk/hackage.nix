{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tmapchan";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/tmapchan#readme";
        url = "";
        synopsis = "A time-ordered multimap which consumes values as you lookup";
        description = "";
        buildType = "Simple";
      };
      components = {
        "tmapchan" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.stm
            hsPkgs.unordered-containers
          ];
        };
      };
    }