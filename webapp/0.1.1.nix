{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "webapp";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Nathaniel Symer";
        maintainer = "Nathaniel Symer <nate@symer.io>";
        author = "Nathaniel Symer <nate@symer.io>";
        homepage = "https://github.com/fhsjaagshs/webapp";
        url = "";
        synopsis = "Haskell web scaffolding using Scotty, WAI, and Warp";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        webapp = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.scotty
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.warp-tls
            hsPkgs.network
            hsPkgs.streaming-commons
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.unix
            hsPkgs.fsnotify
            hsPkgs.filepath
            hsPkgs.hashtables
            hsPkgs.base16-bytestring
            hsPkgs.blaze-builder
            hsPkgs.zlib
            hsPkgs.cryptohash
            hsPkgs.text
            hsPkgs.hjsmin
            hsPkgs.css-text
            hsPkgs.mime-types
            hsPkgs.bcrypt
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.scotty
              hsPkgs.http-types
              hsPkgs.optparse-applicative
              hsPkgs.webapp
            ];
          };
        };
      };
    }