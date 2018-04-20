{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Range";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "";
        url = "";
        synopsis = "Data structure for managing ranges";
        description = "";
        buildType = "Simple";
      };
      components = {
        Range = {
          depends  = [ hsPkgs.base ];
        };
      };
    }