{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Zora";
          version = "1.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgwines@cs.stanford.edu";
        author = "Brett Wines";
        homepage = "git://github.com/bgwines/zora.git";
        url = "";
        synopsis = "A library of assorted useful functions and data types and classes.";
        description = "A library of assorted useful functions and data types and classes.";
        buildType = "Simple";
      };
      components = {
        "Zora" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }