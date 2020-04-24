{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "atom-msp430"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dan.buckmaster@gmail.com";
      author = "Daniel Buckmaster";
      homepage = "https://github.com/eightyeight/atom-msp430";
      url = "";
      synopsis = "Convenience functions for using Atom with the MSP430 microcontroller family.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."atom" or ((hsPkgs.pkgs-errors).buildDepError "atom"))
          ];
        buildable = true;
        };
      };
    }