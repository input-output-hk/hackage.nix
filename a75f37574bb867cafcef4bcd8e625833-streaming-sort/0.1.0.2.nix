{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-sort";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Sorting streams";
        description = "Sort streaming values, using files for a cached merge-sort of long @Stream@s.";
        buildType = "Simple";
      };
      components = {
        "streaming-sort" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.streaming
            hsPkgs.streaming-binary
            hsPkgs.streaming-bytestring
            hsPkgs.streaming-with
            hsPkgs.transformers
          ];
        };
        tests = {
          "sorting-tests" = {
            depends  = [
              hsPkgs.streaming-sort
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.streaming
              hsPkgs.streaming-with
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }