{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "penrose";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kqy@cs.cmu.edu";
        author = "team-penrose";
        homepage = "http://penrose.ink";
        url = "";
        synopsis = "A system that automatically visualize mathematics";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "penrose" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.gloss
              hsPkgs.megaparsec
              hsPkgs.ad
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.websockets
              hsPkgs.old-time
            ];
          };
        };
      };
    }