{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "combinatorics";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011--2012 wren ng thornton";
        maintainer = "wren@community.haskell.org";
        author = "wren ng thornton";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "Efficient computation of common combinatoric functions.";
        description = "Efficient computation of common combinatoric functions.";
        buildType = "Custom";
      };
      components = {
        "combinatorics" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }