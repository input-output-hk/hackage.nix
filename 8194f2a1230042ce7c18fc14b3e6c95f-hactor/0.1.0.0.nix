{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hactor";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "forkk@forkk.net";
        author = "Alex Constandache, Forkk";
        homepage = "https://github.com/Forkk/hactor";
        url = "";
        synopsis = "Lightweight Erlang-style actors for Haskell.";
        description = "This is a fork of Thespian, a library which aims to provide lightweight Erlang-style actors for Haskell.";
        buildType = "Simple";
      };
      components = {
        "hactor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }