{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Hmpf"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Thomas L. Bevan <thomas.bevan@gmail.com>";
      author = "Thomas L. Bevan";
      homepage = "";
      url = "";
      synopsis = "An MPD client designed for a Home Theatre PC";
      description = "An MPD client designed to be used on a Home Theatre PC equipt with an infrared remote\nand VDU display.\n\nHmpf is designed to allow the user to navigate through a large digital music collection with\na standard infrared remote and VDU. The client does not need or accept input from the keyboard\n\nHmpf also implements the LastFM protocol and is able to intelligently generate dynamic playlists";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hmpf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }