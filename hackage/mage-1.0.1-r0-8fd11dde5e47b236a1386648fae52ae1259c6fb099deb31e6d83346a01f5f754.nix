{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "mage";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Richard Braakman <dark@xs.nl>";
      homepage = "http://www.scannedinavian.com/~shae/mage-1.0pre35.tar.gz";
      url = "";
      synopsis = "Rogue-like";
      description = "A simple rogue-like; currently has a Curses interface\nand simple movement and dungeon creation capbilities.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
          libs = [ (pkgs."curses") ];
        };
      };
    };
  }