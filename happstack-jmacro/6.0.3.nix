{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-jmacro";
          version = "6.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.happstack.com/";
        url = "";
        synopsis = "Support for using JMacro with Happstack";
        description = "";
        buildType = "Simple";
      };
      components = {
        happstack-jmacro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.jmacro
            hsPkgs.happstack-server
            hsPkgs.pretty
            hsPkgs.utf8-string
          ];
        };
      };
    }