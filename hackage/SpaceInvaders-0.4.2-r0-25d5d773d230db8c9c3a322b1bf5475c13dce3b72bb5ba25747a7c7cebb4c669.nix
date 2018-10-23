{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "SpaceInvaders";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
      author = "Henrik Nilsson, Antony Courtney";
      homepage = "http://www.haskell.org/yampa/";
      url = "";
      synopsis = "Video game";
      description = "Video game implemented in Yampa.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "spaceInvaders" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.HGL)
            (hsPkgs.Yampa)
          ];
        };
      };
    };
  }