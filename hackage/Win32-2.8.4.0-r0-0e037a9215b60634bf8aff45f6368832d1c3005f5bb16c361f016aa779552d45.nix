{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "Win32"; version = "2.8.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003; shelarcy, 2012-2013; Tamar Christina, 2016-2018";
      maintainer = "Haskell Libraries <libraries@haskell.org>";
      author = "Alastair Reid, shelarcy, Tamar Christina";
      homepage = "https://github.com/haskell/win32";
      url = "";
      synopsis = "A binding to Windows Win32 API.";
      description = "This library contains direct bindings to the Windows Win32 APIs for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unbuildable" or ((hsPkgs.pkgs-errors).buildDepError "unbuildable"));
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
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = if !system.isWindows then false else true;
        };
      };
    }