{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-jmacro";
          version = "7.0.9";
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
        "happstack-jmacro" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.digest
            hsPkgs.happstack-server
            hsPkgs.jmacro
            hsPkgs.wl-pprint-text
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }