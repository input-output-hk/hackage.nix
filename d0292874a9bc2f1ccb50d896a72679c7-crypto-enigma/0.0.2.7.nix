{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "crypto-enigma";
          version = "0.0.2.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2016 Roy Levien";
        maintainer = "royl@aldaron.com";
        author = "Roy Levien";
        homepage = "https://github.com/orome/crypto-enigma-hs";
        url = "";
        synopsis = "An Enigma machine simulator with display.";
        description = "The crypto-enigma package is an Enigma machine simulator\nwith rich display and machine state details.\n\nCurrently support is only provided for the machine models in most widespread general use\nduring the war years: the I, M3, and M4.\n\nFor basic functionality, including some introspection of machine state\nand the mappings performed, simply\n\n> > import Crypto.Enigma\n\nFor richer display functionality additionally\n\n> > import Crypto.Enigma.Display\n\n(Note that this package assumes support for combining Unicode, without which some output may\nappear garbled.)";
        buildType = "Simple";
      };
      components = {
        crypto-enigma = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.split
            hsPkgs.mtl
            hsPkgs.MissingH
          ];
        };
        tests = {
          crypto-enigma-check = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.crypto-enigma
            ];
          };
          crypto-enigma-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.crypto-enigma
            ];
          };
        };
      };
    }