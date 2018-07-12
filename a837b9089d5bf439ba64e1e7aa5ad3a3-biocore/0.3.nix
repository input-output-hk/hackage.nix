{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "biocore";
          version = "0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "ketil@malde.org";
        author = "Ketil Malde";
        homepage = "";
        url = "";
        synopsis = "A bioinformatics library";
        description = "A set of core definitions and data structures\ncommonly used in bioinformatics.  The intention is that bioinformatics\nlibraries will use this as a common ground to avoid needless incompatibilities\nand duplicated work.";
        buildType = "Simple";
      };
      components = {
        "biocore" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.stringable
          ];
        };
      };
    }