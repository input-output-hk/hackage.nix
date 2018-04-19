{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haxparse";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/haxparse";
        url = "";
        synopsis = "Readable HaxBall replays";
        description = "Provides an interface for parsing HaxBall replays.";
        buildType = "Simple";
      };
      components = {
        haxparse = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.data-default
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.split
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.zlib
          ];
        };
        exes = {
          haxparse = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-binary-ieee754
              hsPkgs.data-default
              hsPkgs.haxparse
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.split
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.utf8-string
              hsPkgs.zlib
            ];
          };
        };
      };
    }