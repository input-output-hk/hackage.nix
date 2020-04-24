{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "Liquorice"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "© 2020 Jonathan Dowland";
      maintainer = "jon+hackage@dow.land";
      author = "Jonathan Dowland";
      homepage = "https://jmtd.net/doom/liquorice/";
      url = "";
      synopsis = "Algorithmic Doom map generation";
      description = "A system for constructing maps for the computer game Doom\nby writing algorithms to describe the geometry. A Liquorice\nprogram is a series of instructions to move a virtual\n\"turtle\" or \"pen\", which define the walls, floors, rooms\nand monsters as it goes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test-hwadc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }