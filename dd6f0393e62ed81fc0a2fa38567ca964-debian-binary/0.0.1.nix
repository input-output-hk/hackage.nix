{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3.0";
        identifier = {
          name = "debian-binary";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008 Marco Túlio Gontijo e Silva <marcot@riseup.net>";
        maintainer = "Marco Túlio Gontijo e Silva <marcot@riseup.net>";
        author = "Marco Túlio Gontijo e Silva";
        homepage = "";
        url = "";
        synopsis = "Utilities to work with debian binary packages";
        description = "This package provides a library and some tools to work with debian binary\npackages.";
        buildType = "Simple";
      };
      components = {
        "debian-binary" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.HSH
          ];
        };
        exes = {
          "manual" = {};
          "query" = {};
          "update" = {};
        };
      };
    }