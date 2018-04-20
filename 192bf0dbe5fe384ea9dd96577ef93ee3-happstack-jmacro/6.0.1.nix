{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-jmacro";
          version = "6.0.1";
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
            hsPkgs.utf8-string
          ];
        };
      };
    }