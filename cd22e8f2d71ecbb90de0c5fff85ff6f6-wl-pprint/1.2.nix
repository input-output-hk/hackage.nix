{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wl-pprint";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Noam Lewis <jones.noamle@gmail.com>";
        author = "Daan Leijen";
        homepage = "";
        url = "";
        synopsis = "The Wadler/Leijen Pretty Printer";
        description = "This is a pretty printing library based on Wadler's paper \"A Prettier\nPrinter\".  See the haddocks for full info.  This version allows the\nlibrary user to declare overlapping instances of the 'Pretty' class.";
        buildType = "Simple";
      };
      components = {
        wl-pprint = {
          depends  = [ hsPkgs.base ];
        };
      };
    }