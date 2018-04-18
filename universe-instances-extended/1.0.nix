{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "universe-instances-extended";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Daniel Wagner 2014";
        maintainer = "me@dmwit.com";
        author = "Daniel Wagner";
        homepage = "https://github.com/dmwit/universe";
        url = "";
        synopsis = "Universe instances for types from select extra packages";
        description = "";
        buildType = "Simple";
      };
      components = {
        universe-instances-extended = {
          depends  = [
            hsPkgs.adjunctions
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.universe-instances-base
            hsPkgs.void
          ];
        };
      };
    }