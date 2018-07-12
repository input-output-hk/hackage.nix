{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "read-bounded";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "";
        url = "";
        synopsis = "Class for reading bounded values";
        description = "Class for reading bounded values from strings.";
        buildType = "Simple";
      };
      components = {
        "read-bounded" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }