{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-cassava";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "Servant CSV content-type for cassava";
        description = "Servant CSV content-type for cassava.";
        buildType = "Simple";
      };
      components = {
        servant-cassava = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.cassava
            hsPkgs.servant
            hsPkgs.http-media
            hsPkgs.vector
          ];
        };
      };
    }