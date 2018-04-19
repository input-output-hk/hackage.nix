{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iwlib";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jose Antonio Ortega Ruiz <jao@gnu.org>";
        author = "Jose Antonio Ortega Ruiz <jao@gnu.org>";
        homepage = "https://github.com/jaor/iwlib";
        url = "";
        synopsis = "Bindings for the iw C library";
        description = "A binding to the iw library for getting info about the current WiFi connection.";
        buildType = "Simple";
      };
      components = {
        iwlib = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.iw ];
        };
      };
    }