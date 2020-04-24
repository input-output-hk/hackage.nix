{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "blubber"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) plaimi 2015";
      maintainer = "blubber@plaimi.net";
      author = "plaimi";
      homepage = "https://secure.plaimi.net/games/blubber.html";
      url = "";
      synopsis = "The blubber client; connects to the blubber\nserver.";
      description = "The blubber client. blubber is an arcade game in\nwhich the player tries to build the biggest blub\nby blubberping the other blubs before they\nblubber the player's blub.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "blubber" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blubber-server" or ((hsPkgs.pkgs-errors).buildDepError "blubber-server"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }