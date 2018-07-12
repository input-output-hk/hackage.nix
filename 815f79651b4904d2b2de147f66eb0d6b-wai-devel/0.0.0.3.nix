{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-devel";
          version = "0.0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "njagi@urbanslug.com";
        author = "Njagi Mwaniki";
        homepage = "https://github.com/urbanslug/wai-devel";
        url = "";
        synopsis = "A web server for the development of WAI compliant web applications.";
        description = "A development server for WAI applications.";
        buildType = "Simple";
      };
      components = {
        "wai-devel" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal-ide-backend
            hsPkgs.Glob
            hsPkgs.MissingH
            hsPkgs.array
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.ghc
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-reverse-proxy
            hsPkgs.http-types
            hsPkgs.ide-backend
            hsPkgs.network
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.shakespeare
            hsPkgs.stm
            hsPkgs.streaming-commons
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.file-embed
            hsPkgs.websockets
            hsPkgs.split
          ];
        };
        exes = {
          "wai-devel" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-devel
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.stm
              hsPkgs.wai-devel
            ];
          };
        };
      };
    }