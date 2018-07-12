{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpack";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "https://github.com/sol/hpack#readme";
        url = "";
        synopsis = "An alternative format for Haskell packages";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hpack" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.hspec
              hsPkgs.mockery
              hsPkgs.interpolate
            ];
          };
        };
      };
    }