let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Win32"; version = "2.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Alastair Reid, 1999-2003; shelarcy, 2012-2013; Tamar Christina, 2016-2017";
      maintainer = "Haskell Libraries <libraries@haskell.org>";
      author = "Alastair Reid, shelarcy, Tamar Christina";
      homepage = "https://github.com/haskell/win32";
      url = "";
      synopsis = "A binding to part of the Win32 library";
      description = "A binding to part of the Win32 library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unbuildable" or (buildDepError "unbuildable"));
        libs = [
          (pkgs."user32" or (sysDepError "user32"))
          (pkgs."gdi32" or (sysDepError "gdi32"))
          (pkgs."winmm" or (sysDepError "winmm"))
          (pkgs."advapi32" or (sysDepError "advapi32"))
          (pkgs."shell32" or (sysDepError "shell32"))
          (pkgs."shfolder" or (sysDepError "shfolder"))
          (pkgs."shlwapi" or (sysDepError "shlwapi"))
          (pkgs."msimg32" or (sysDepError "msimg32"))
          (pkgs."imm32" or (sysDepError "imm32"))
          ];
        };
      };
    }