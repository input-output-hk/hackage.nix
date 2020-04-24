{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cudd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/haskell_cudd";
      url = "";
      synopsis = "Bindings to the CUDD binary decision diagrams library";
      description = "Bindings to the CUDD binary decision diagrams library.\n\n<http://vlsi.colorado.edu/~fabio/CUDD/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [
          (pkgs."cudd" or ((hsPkgs.pkgs-errors).sysDepError "cudd"))
          (pkgs."mtr" or ((hsPkgs.pkgs-errors).sysDepError "mtr"))
          (pkgs."st" or ((hsPkgs.pkgs-errors).sysDepError "st"))
          (pkgs."util" or ((hsPkgs.pkgs-errors).sysDepError "util"))
          (pkgs."epd" or ((hsPkgs.pkgs-errors).sysDepError "epd"))
          (pkgs."dddmp" or ((hsPkgs.pkgs-errors).sysDepError "dddmp"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }