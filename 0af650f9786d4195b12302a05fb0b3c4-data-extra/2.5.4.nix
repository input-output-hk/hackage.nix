{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "data-extra";
          version = "2.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done, Sam Levy";
        homepage = "";
        url = "";
        synopsis = "Extra utilities for working on Data.* types.";
        description = "Extra utilities for working on Data.* types.";
        buildType = "Simple";
      };
      components = {
        "data-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.mtl
          ];
        };
      };
    }