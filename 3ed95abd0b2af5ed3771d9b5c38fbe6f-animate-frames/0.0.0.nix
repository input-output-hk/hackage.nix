{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "animate-frames";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "Joe Vargas";
        homepage = "https://github.com/jxv/animate-frames#readme";
        url = "";
        synopsis = "";
        description = "Convert sprite frames to animate files";
        buildType = "Simple";
      };
      components = {
        "animate-frames" = {
          depends  = [
            hsPkgs.JuicyPixels
            hsPkgs.aeson
            hsPkgs.animate
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.pureMD5
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.yaml
          ];
        };
        exes = {
          "animate-frames" = {
            depends  = [
              hsPkgs.animate-frames
              hsPkgs.base
            ];
          };
        };
        tests = {
          "animate-frames-test-suite" = {
            depends  = [
              hsPkgs.animate-frames
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
      };
    }