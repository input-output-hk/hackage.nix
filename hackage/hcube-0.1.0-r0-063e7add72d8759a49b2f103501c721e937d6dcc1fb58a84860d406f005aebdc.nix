{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14.0";
      identifier = {
        name = "hcube";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012";
      maintainer = "Todd Wegner";
      author = "Todd Wegner";
      homepage = "";
      url = "";
      synopsis = "Virtual Rubik's cube of arbitrary size.";
      description = "Provides virtual model of NxNxN Rubik's cube and console visualization for\n2x2x2, 3x3x3 ,4x4x4, and 5x5x5. Console visualization is choosen in the interest\nof portability. Virtual cube can be constructed from the state\nof a physical cube. Support for a two phase algorithm will be given in a future release\nfor cubes of size 3x3x3 to find the smallest number of moves which solve the cube.\nThe Rubik's cube exhibits many non-trival aspects of group theory.\nThe package comes with an executable \"hcube\".\nThe command ./hcube 5 will create a 5x5x5 cube.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.HaskellForMaths)
          (hsPkgs.text)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "hcube" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.HaskellForMaths)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }