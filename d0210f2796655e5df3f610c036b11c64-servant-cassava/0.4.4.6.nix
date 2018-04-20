{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-cassava";
          version = "0.4.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "Servant CSV content-type for cassava";
        description = "";
        buildType = "Simple";
      };
      components = {
        servant-cassava = {
          depends  = [
            hsPkgs.base
            hsPkgs.cassava
            hsPkgs.servant
            hsPkgs.http-media
            hsPkgs.vector
          ];
        };
      };
    }