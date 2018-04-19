{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bytestring-rematch";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tcrayford@gmail.com";
        author = "Tom Crayford";
        homepage = "github.com/tcrayford/rematch";
        url = "";
        synopsis = "Rematch support for ByteString";
        description = "";
        buildType = "Simple";
      };
      components = {
        bytestring-rematch = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.rematch
            ];
          };
        };
      };
    }