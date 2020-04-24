{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Win32"; version = "2.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003; shelarcy, 2012-2013";
      maintainer = "Haskell Libraries <libraries@haskell.org>";
      author = "Alastair Reid, shelarcy";
      homepage = "https://github.com/haskell/win32";
      url = "";
      synopsis = "A binding to part of the Win32 library";
      description = "A binding to part of the Win32 library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        libs = [
          (pkgs."user32" or ((hsPkgs.pkgs-errors).sysDepError "user32"))
          (pkgs."gdi32" or ((hsPkgs.pkgs-errors).sysDepError "gdi32"))
          (pkgs."winmm" or ((hsPkgs.pkgs-errors).sysDepError "winmm"))
          (pkgs."advapi32" or ((hsPkgs.pkgs-errors).sysDepError "advapi32"))
          (pkgs."shell32" or ((hsPkgs.pkgs-errors).sysDepError "shell32"))
          (pkgs."shfolder" or ((hsPkgs.pkgs-errors).sysDepError "shfolder"))
          (pkgs."shlwapi" or ((hsPkgs.pkgs-errors).sysDepError "shlwapi"))
          (pkgs."msimg32" or ((hsPkgs.pkgs-errors).sysDepError "msimg32"))
          (pkgs."imm32" or ((hsPkgs.pkgs-errors).sysDepError "imm32"))
          (pkgs."ntdll" or ((hsPkgs.pkgs-errors).sysDepError "ntdll"))
          ];
        buildable = true;
        };
      };
    }