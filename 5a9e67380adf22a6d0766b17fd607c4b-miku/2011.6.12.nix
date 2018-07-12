{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "miku";
          version = "2011.6.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/miku";
        url = "";
        synopsis = "A minimum web dev DSL in Haskell";
        description = "A simple library for fast web prototyping in Haskell.";
        buildType = "Simple";
      };
      components = {
        "miku" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.hack2
            hsPkgs.hack2-contrib
            hsPkgs.utf8-string
            hsPkgs.air
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.bytestring
          ];
        };
      };
    }