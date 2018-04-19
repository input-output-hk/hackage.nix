{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-expectations-lifted";
          version = "0.8.2";
        };
        license = "MIT";
        copyright = "(c) 2011-2016 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "A version of hspec-expectations generalized to MonadIO";
        description = "A version of hspec-expectations generalized to MonadIO";
        buildType = "Simple";
      };
      components = {
        hspec-expectations-lifted = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec-expectations
            hsPkgs.transformers
          ];
        };
      };
    }