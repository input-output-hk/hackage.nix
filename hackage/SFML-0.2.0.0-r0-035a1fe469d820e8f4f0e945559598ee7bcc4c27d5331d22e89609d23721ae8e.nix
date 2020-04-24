{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "SFML"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jeannekamikaze@gmail.com";
      author = "Marc Sunet";
      homepage = "https://github.com/jeannekamikaze/SFML";
      url = "";
      synopsis = "SFML bindings";
      description = "Low level bindings for SFML 2.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."csfml-window" or ((hsPkgs.pkgs-errors).sysDepError "csfml-window"))
          (pkgs."csfml-system" or ((hsPkgs.pkgs-errors).sysDepError "csfml-system"))
          (pkgs."csfml-graphics" or ((hsPkgs.pkgs-errors).sysDepError "csfml-graphics"))
          (pkgs."csfml-network" or ((hsPkgs.pkgs-errors).sysDepError "csfml-network"))
          (pkgs."csfml-audio" or ((hsPkgs.pkgs-errors).sysDepError "csfml-audio"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }