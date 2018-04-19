{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "metric";
          version = "0.1.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@vikramverma.com";
        author = "Vikram Verma";
        homepage = "";
        url = "";
        synopsis = "Metric spaces.";
        description = "";
        buildType = "Simple";
      };
      components = {
        metric = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.hmatrix
            hsPkgs.edit-distance
            hsPkgs.data-default
          ];
        };
        tests = {
          metric-tests: = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.metric
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }