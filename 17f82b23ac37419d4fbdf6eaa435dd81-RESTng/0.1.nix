{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "RESTng";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "none";
        author = "RedNucleus (see AUTHORS)";
        homepage = "";
        url = "";
        synopsis = "A framework for writing RESTful applications.";
        description = "RESTng is still experimental and incomplete, but many implemented features may be of interest, including: grids for presentation,\nhierarchical URLs automatic handling, ORM generates tables from haskell records.";
        buildType = "Simple";
      };
      components = {
        RESTng = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.HDBC
            hsPkgs.HDBC-postgresql
            hsPkgs.redHandlers
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.yuiGrid
            hsPkgs.xhtml
          ];
        };
      };
    }