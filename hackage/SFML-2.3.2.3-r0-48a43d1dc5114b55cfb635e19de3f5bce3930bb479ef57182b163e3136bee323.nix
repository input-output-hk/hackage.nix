{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { officialcsfmlforwindows = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "SFML"; version = "2.3.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "jeannekamikaze@gmail.com";
      author = "Marc Sunet";
      homepage = "https://github.com/jeannekamikaze/SFML";
      url = "";
      synopsis = "SFML bindings";
      description = "Low level bindings for SFML 2.3.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."csfml-window" or ((hsPkgs.pkgs-errors).sysDepError "csfml-window"))
            (pkgs."csfml-system" or ((hsPkgs.pkgs-errors).sysDepError "csfml-system"))
            (pkgs."csfml-graphics" or ((hsPkgs.pkgs-errors).sysDepError "csfml-graphics"))
            (pkgs."csfml-network" or ((hsPkgs.pkgs-errors).sysDepError "csfml-network"))
            (pkgs."csfml-audio" or ((hsPkgs.pkgs-errors).sysDepError "csfml-audio"))
            ]
          else [
            (pkgs."csfml-window" or ((hsPkgs.pkgs-errors).sysDepError "csfml-window"))
            (pkgs."csfml-system" or ((hsPkgs.pkgs-errors).sysDepError "csfml-system"))
            (pkgs."csfml-graphics" or ((hsPkgs.pkgs-errors).sysDepError "csfml-graphics"))
            (pkgs."csfml-network" or ((hsPkgs.pkgs-errors).sysDepError "csfml-network"))
            (pkgs."csfml-audio" or ((hsPkgs.pkgs-errors).sysDepError "csfml-audio"))
            (pkgs."sfml-window" or ((hsPkgs.pkgs-errors).sysDepError "sfml-window"))
            (pkgs."sfml-system" or ((hsPkgs.pkgs-errors).sysDepError "sfml-system"))
            (pkgs."sfml-graphics" or ((hsPkgs.pkgs-errors).sysDepError "sfml-graphics"))
            (pkgs."sfml-network" or ((hsPkgs.pkgs-errors).sysDepError "sfml-network"))
            (pkgs."sfml-audio" or ((hsPkgs.pkgs-errors).sysDepError "sfml-audio"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }