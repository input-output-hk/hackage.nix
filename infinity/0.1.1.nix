{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "infinity";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "austin@youareinferior.net";
        author = "Austin Seipp";
        homepage = "";
        url = "";
        synopsis = "a tiny IRC bot";
        description = "a tiny IRC bot, extendable through\nplugins written in haskell";
        buildType = "Custom";
      };
      components = {
        exes = {
          infinity = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.plugins
              hsPkgs.haskell98
            ];
          };
        };
      };
    }