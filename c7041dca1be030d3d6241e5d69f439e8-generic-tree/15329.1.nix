{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "generic-tree";
          version = "15329.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "Matthew Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Generic Tree data type";
        description = "Generic tree type";
        buildType = "Simple";
      };
      components = {
        generic-tree = {
          depends  = [ hsPkgs.base ];
        };
      };
    }