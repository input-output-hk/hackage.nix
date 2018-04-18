{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "free-http";
          version = "0.1.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "vilevin@gmail.com";
        author = "Aaron Levin";
        homepage = "https://github.com/aaronlevin/free-http";
        url = "";
        synopsis = "An HTTP Client based on Free Monads.";
        description = "`free-http` is an http-client based on Free Monads.\n`free-http` exposes a Free Monad to express standard http\nverbs as well as several backends to interpet programs\nwritten in the free monad using various http clients\n(currently: a pure client, an `http-client`-backed client,\nand a random client). Please see the ReadMe for usage.";
        buildType = "Simple";
      };
      components = {
        free-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.free
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }