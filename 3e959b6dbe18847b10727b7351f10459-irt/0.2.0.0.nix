{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "irt";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "elliot.robinson@argiopetech.com";
        author = "Elliot Robinson";
        homepage = "https://github.com/argiopetech/irt";
        url = "";
        synopsis = "A Haskell library providing Item Response Theory functions for use in computerized adaptive testing";
        description = "";
        buildType = "Simple";
      };
      components = {
        irt = {
          depends  = [
            hsPkgs.base
            hsPkgs.ad
            hsPkgs.data-default-class
            hsPkgs.statistics
          ];
        };
      };
    }