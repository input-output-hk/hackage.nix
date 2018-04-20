{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-layout";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Jacob Stanley (c) 2012-2013";
        maintainer = "Jacob Stanley <jacob@stanley.io>";
        author = "Jacob Stanley";
        homepage = "http://github.com/jystic/data-layout";
        url = "";
        synopsis = "Read/write arbitrary binary layouts to a \"Data.Vector.Storable\".";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-layout = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
      };
    }