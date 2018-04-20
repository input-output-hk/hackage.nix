{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "refty";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2017 Shinya Takahashi";
        maintainer = "Shinya Takahashi <s.takahashi313@gmail.com>";
        author = "Shinya Takahashi";
        homepage = "https://github.com/oreshinya/refty";
        url = "";
        synopsis = "Formatted JSON generator for API server inspired by normalizr.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        refty = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        tests = {
          refty-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.refty
            ];
          };
        };
      };
    }