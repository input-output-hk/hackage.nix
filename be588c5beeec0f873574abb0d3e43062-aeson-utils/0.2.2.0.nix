{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-utils";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Silk B.V";
        maintainer = "code@silk.co";
        author = "Silk. B.V.";
        homepage = "";
        url = "";
        synopsis = "Utilities for working with Aeson.";
        description = "Utilities for working with Aeson.";
        buildType = "Simple";
      };
      components = {
        aeson-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.scientific
            hsPkgs.text
          ];
        };
      };
    }