{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alternative-extra";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "marcos@marcosdumay.com";
        author = "Marcos Dumay de Medeiros";
        homepage = "";
        url = "";
        synopsis = "Extra utilities for alternatives";
        description = "Extra utilities for alternatives";
        buildType = "Simple";
      };
      components = {
        "alternative-extra" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }