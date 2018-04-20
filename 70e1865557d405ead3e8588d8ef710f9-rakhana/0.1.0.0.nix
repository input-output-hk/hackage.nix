{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "rakhana";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "http://github.com/YoEight/rakhana";
        url = "";
        synopsis = "Stream based PDF library";
        description = "Stream based PDF library";
        buildType = "Simple";
      };
      components = {
        rakhana = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.pipes
            hsPkgs.pipes-safe
            hsPkgs.scientific
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.zlib
          ];
        };
      };
    }