{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kmeans";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gershomb@gmail.com";
        author = "Keegan Carruthers-Smith";
        homepage = "";
        url = "";
        synopsis = "K-means clustering algorithm";
        description = "A simple library for k-means clustering";
        buildType = "Simple";
      };
      components = {
        kmeans = {
          depends  = [ hsPkgs.base ];
        };
      };
    }