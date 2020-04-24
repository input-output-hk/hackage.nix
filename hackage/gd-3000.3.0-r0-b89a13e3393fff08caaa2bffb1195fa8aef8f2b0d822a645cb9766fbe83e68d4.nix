{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "gd"; version = "3000.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding to a subset of the GD graphics library";
      description = "This is a binding to a (currently very small) subset of\nthe GD graphics library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."gd" or ((hsPkgs.pkgs-errors).sysDepError "gd"))
          (pkgs."png" or ((hsPkgs.pkgs-errors).sysDepError "png"))
          (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
          (pkgs."jpeg" or ((hsPkgs.pkgs-errors).sysDepError "jpeg"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          (pkgs."fontconfig" or ((hsPkgs.pkgs-errors).sysDepError "fontconfig"))
          (pkgs."freetype" or ((hsPkgs.pkgs-errors).sysDepError "freetype"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          (pkgs."expat" or ((hsPkgs.pkgs-errors).sysDepError "expat"))
          ];
        buildable = true;
        };
      };
    }