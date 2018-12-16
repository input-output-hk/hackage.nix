{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { mosaic = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rainbox";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Omari Norman";
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
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.array)
        ];
      };
      exes = {
        "rainbox-mosaic" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.rainbow)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      tests = {
        "rainbox-visual" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ];
        };
        "rainbox-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }