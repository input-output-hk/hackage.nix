{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-player";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Giovanni Cappellotto";
        maintainer = "potomak84@gmail.com";
        author = "Giovanni Cappellotto";
        homepage = "https://github.com/potomak/haskell-player";
        url = "";
        synopsis = "A terminal music player based on afplay";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "haskell-player" = {
          depends  = [
            hsPkgs.base
            hsPkgs.brick
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.microlens
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.vty
            hsPkgs.xml-conduit
          ];
        };
        exes = {
          "haskell-player" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-player
            ];
          };
        };
        tests = {
          "haskell-player-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-player
            ];
          };
        };
      };
    }