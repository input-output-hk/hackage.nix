{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "kmeans";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "max.rabkin@gmail.com";
        author = "Keegan Carruthers-Smith";
        homepage = "";
        url = "";
        synopsis = "Hidden Markov Model algorithms";
        description = "A simple library for k-means clustering";
        buildType = "Simple";
      };
      components = {
        kmeans = {
          depends  = [ hsPkgs.base ];
        };
      };
    }