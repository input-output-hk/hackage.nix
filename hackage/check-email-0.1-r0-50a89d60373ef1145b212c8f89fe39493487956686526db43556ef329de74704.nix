{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "check-email"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Confirm whether an email is valid and probably existant.";
      description = "Confirm whether an email is valid and probably existant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
          ];
        libs = [
          (pkgs."gd" or ((hsPkgs.pkgs-errors).sysDepError "gd"))
          (pkgs."png" or ((hsPkgs.pkgs-errors).sysDepError "png"))
          (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
          (pkgs."jpeg" or ((hsPkgs.pkgs-errors).sysDepError "jpeg"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          (pkgs."fontconfig" or ((hsPkgs.pkgs-errors).sysDepError "fontconfig"))
          (pkgs."freetype" or ((hsPkgs.pkgs-errors).sysDepError "freetype"))
          (pkgs."expat" or ((hsPkgs.pkgs-errors).sysDepError "expat"))
          (pkgs."resolv" or ((hsPkgs.pkgs-errors).sysDepError "resolv"))
          ];
        buildable = true;
        };
      };
    }