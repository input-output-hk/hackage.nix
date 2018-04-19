{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpg";
          version = "0.3";
        };
        license = "ISC";
        copyright = "";
        maintainer = "fritjof@alokat.org";
        author = "Fritjof Bornebusch";
        homepage = "https://git.alokat.org/hpg";
        url = "";
        synopsis = "no";
        description = "the haskell password generator.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hpg = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ] ++ pkgs.lib.optional system.isOpenbsd hsPkgs.unix;
          };
        };
      };
    }