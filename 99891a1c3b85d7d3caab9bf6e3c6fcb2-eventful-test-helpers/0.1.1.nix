{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventful-test-helpers";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "https://github.com/jdreaver/eventful#readme";
        url = "";
        synopsis = "Common module used for eventful tests";
        description = "Common module used for eventful tests";
        buildType = "Simple";
      };
      components = {
        "eventful-test-helpers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.eventful-core
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.extra
            hsPkgs.hspec
            hsPkgs.monad-logger
          ];
        };
      };
    }