{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pinboard";
          version = "0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015 Jon Schoning";
        maintainer = "jonschoning@gmail.com";
        author = "Jon Schoning";
        homepage = "https://github.com/jonschoning/pinboard";
        url = "";
        synopsis = "Access to the Pinboard API";
        description = "\nThe Pinboard API is a way to interact programatically with\nyour bookmarks, notes and other Pinboard data. This\nlibrary wraps the API exposing functions and data\nstructures suitable for usage in Haskell programs.\n\nExample:\n\n> import Pinboard\n>\n> main :: IO ()\n> main = do\n>   let config = fromApiToken \"api token\"\n>   result <- runPinboardJson config \$ getPostsRecent Nothing Nothing\n>   case result of\n>     Right details -> print details\n>     Left pinboardError -> print pinboardError\n";
        buildType = "Simple";
      };
      components = {
        "pinboard" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.HsOpenSSL
            hsPkgs.http-streams
            hsPkgs.http-types
            hsPkgs.io-streams
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }