{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hBDD-CUDD"; version = "0.0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "(C) 2002-2005, 2009 University of New South Wales, (C) 2009-2011 Peter Gammie";
      maintainer = "peteg42@gmail.com";
      author = "Peter Gammie, Jeremy Lee";
      homepage = "";
      url = "";
      synopsis = "An FFI binding to the CUDD library";
      description = "hBDD provides a high-level API to some Boolean Decision Diagram\nlibraries; this is the CUDD part of it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hBDD" or ((hsPkgs.pkgs-errors).buildDepError "hBDD"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."cudd" or ((hsPkgs.pkgs-errors).sysDepError "cudd")) ++ (pkgs.lib).optionals (system.isLinux) [
          (pkgs."cudd" or ((hsPkgs.pkgs-errors).sysDepError "cudd"))
          (pkgs."mtr" or ((hsPkgs.pkgs-errors).sysDepError "mtr"))
          (pkgs."st" or ((hsPkgs.pkgs-errors).sysDepError "st"))
          (pkgs."util" or ((hsPkgs.pkgs-errors).sysDepError "util"))
          (pkgs."epd" or ((hsPkgs.pkgs-errors).sysDepError "epd"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }