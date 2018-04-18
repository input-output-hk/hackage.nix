{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "io-capture";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Mitchell Rosen";
        maintainer = "mitchellwrosen@gmail.com";
        author = "Mitchell Rosen";
        homepage = "https://github.com/mitchellwrosen/io-capture#readme";
        url = "";
        synopsis = "Capture IO actions' stdout and stderr";
        description = "Capture IO actions' stdout and stderr";
        buildType = "Simple";
      };
      components = {
        io-capture = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.streaming-bytestring
            hsPkgs.unix
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.streaming-bytestring
              hsPkgs.unix
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.io-capture
            ];
          };
        };
      };
    }