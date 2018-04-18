{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hvect";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 - 2015 Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
        homepage = "https://github.com/agrafix/hvect";
        url = "";
        synopsis = "Simple strict heterogeneous lists";
        description = "Small, concise and simple implementation of heterogeneous lists with useful utility functions";
        buildType = "Simple";
      };
      components = {
        hvect = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          hvect-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hvect
              hsPkgs.HTF
            ];
          };
        };
      };
    }