{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "test-shouldbe";
          version = "0.2.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Catchy combinators for HUnit";
        description = "Catchy combinators for HUnit";
        buildType = "Simple";
      };
      components = {
        test-shouldbe = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.silently
              hsPkgs.hspec
              hsPkgs.hspec-discover
            ];
          };
        };
      };
    }