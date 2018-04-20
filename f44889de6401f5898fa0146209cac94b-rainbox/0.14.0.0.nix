{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "rainbox";
          version = "0.14.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2014-2015 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/rainbox";
        url = "";
        synopsis = "Two-dimensional box pretty printing, with colors";
        description = "Prints boxes in two dimensions, with colors.  Boxes are\nautomatically padded with necessary whitespace.\n\nFor more information, please see the Haddock documentation and\n\n<http://www.github.com/massysett/rainbox>";
        buildType = "Simple";
      };
      components = {
        rainbox = {
          depends  = [
            hsPkgs.base
            hsPkgs.rainbow
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        tests = {
          rainbox-properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
          rainbox-visual = {
            depends  = [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }