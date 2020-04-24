{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "ObjectIO"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ka2_mail@yahoo.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        libs = [
          (pkgs."user32" or ((hsPkgs.pkgs-errors).sysDepError "user32"))
          (pkgs."gdi32" or ((hsPkgs.pkgs-errors).sysDepError "gdi32"))
          (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"))
          (pkgs."comctl32" or ((hsPkgs.pkgs-errors).sysDepError "comctl32"))
          (pkgs."comdlg32" or ((hsPkgs.pkgs-errors).sysDepError "comdlg32"))
          (pkgs."shell32" or ((hsPkgs.pkgs-errors).sysDepError "shell32"))
          (pkgs."winmm" or ((hsPkgs.pkgs-errors).sysDepError "winmm"))
          (pkgs."winspool" or ((hsPkgs.pkgs-errors).sysDepError "winspool"))
          (pkgs."ole32" or ((hsPkgs.pkgs-errors).sysDepError "ole32"))
          ];
        buildable = true;
        };
      };
    }