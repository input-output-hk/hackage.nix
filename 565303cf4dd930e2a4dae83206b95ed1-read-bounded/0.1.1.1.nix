{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "read-bounded";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "https://github.com/thomaseding/read-bounded";
        url = "";
        synopsis = "Class for reading bounded values";
        description = "Class for reading bounded values from strings.";
        buildType = "Simple";
      };
      components = {
        read-bounded = {
          depends  = [ hsPkgs.base ];
        };
      };
    }