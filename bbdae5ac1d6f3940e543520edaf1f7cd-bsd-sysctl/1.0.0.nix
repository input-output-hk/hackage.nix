{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bsd-sysctl";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009, Maxime Henrion";
        maintainer = "Maxime Henrion <mhenrion@gmail.com>";
        author = "Maxime Henrion";
        homepage = "";
        url = "";
        synopsis = "Access to the BSD sysctl(3) interface";
        description = "This module provides efficient access to the BSD sysctl(3)\ninterface via the Haskell FFI.  It allows to read and write\nboth basic sysctl types, as well as complex opaque types\ndescribed via Storable instances.";
        buildType = "Simple";
      };
      components = {
        bsd-sysctl = {
          depends  = [ hsPkgs.base ];
        };
      };
    }