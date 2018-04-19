{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Zora";
          version = "1.1.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgwines@cs.stanford.edu";
        author = "Brett Wines";
        homepage = "http://github.com/bgwines/zora";
        url = "";
        synopsis = "A library of assorted useful functions and data types and classes.";
        description = "A library of assorted useful functions and data types and classes.";
        buildType = "Simple";
      };
      components = {
        Zora = {
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