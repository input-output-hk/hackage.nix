{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dual-game"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "francygazz@gmail.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/dual";
      url = "";
      synopsis = "Network multiplayer 2D shooting game";
      description = "Network multiplayer 2D shooting game inspired from \"dual\"\nfor Andriod.\nStart the server with @dual \\<port\\>@\nand the client with @dual \\<server ip\\> \\<server port\\>@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dual" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }