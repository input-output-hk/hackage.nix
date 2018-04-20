{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kmeans";
          version = "0.1.3";
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