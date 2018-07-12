{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "on-a-horse";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jason@on-a-horse.org";
        author = "Jason Hart Priestley";
        homepage = "haskell.on-a-horse.org";
        url = "";
        synopsis = "\"Haskell on a Horse\" - A combinatorial web framework";
        description = "Please read the introduction at http://haskell.on-a-horse.org";
        buildType = "Simple";
      };
      components = {
        "on-a-horse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.hamlet
            hsPkgs.hack
            hsPkgs.hack-handler-evhttp
            hsPkgs.hack-contrib
            hsPkgs.containers
            hsPkgs.arrows
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.bytestring
          ];
        };
      };
    }