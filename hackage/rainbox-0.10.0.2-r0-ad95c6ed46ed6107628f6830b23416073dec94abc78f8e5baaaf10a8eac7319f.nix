{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { grid = false; mosaic = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "rainbox"; version = "0.10.0.2"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.rainbow)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.array)
          ];
        };
      exes = {
        "rainbox-mosaic" = {
          depends = (pkgs.lib).optionals (flags.mosaic) [
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.ChasingBottoms)
            ];
          };
        "rainbox-grid" = {
          depends = (pkgs.lib).optionals (flags.grid) [
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.ChasingBottoms)
            ];
          };
        };
      tests = {
        "rainbox-visual" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.ChasingBottoms)
            ];
          };
        "rainbox-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.ChasingBottoms)
            ];
          };
        };
      };
    }