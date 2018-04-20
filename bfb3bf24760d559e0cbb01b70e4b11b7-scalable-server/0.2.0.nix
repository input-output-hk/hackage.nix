{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "scalable-server";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jamie@bu.mp";
        author = "Jamie Turner";
        homepage = "https://github.com/jamwt/haskell-scalable-server/";
        url = "";
        synopsis = "Library for writing fast/scalable TCP-based services";
        description = "Library for writing fast/scalable TCP-based services";
        buildType = "Simple";
      };
      components = {
        scalable-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.enumerator
            hsPkgs.attoparsec-enumerator
            hsPkgs.network-enumerator
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.blaze-builder
            hsPkgs.BoundedChan
          ];
        };
      };
    }