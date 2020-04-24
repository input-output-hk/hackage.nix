{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "mage"; version = "1.1.0"; };
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
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          libs = [
            (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"))
            ];
          buildable = true;
          };
        };
      };
    }