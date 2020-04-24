{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fsnotify"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Dittmer <mark.s.dittmer@gmail.com>, Greg Weber <greg@gregweber.info>";
      author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Cross platform library for file creation, modification,\nand deletion notification.";
      description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Window, Mac,\nand Linux filesystem event notification.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (if system.isLinux
          then [
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            ]
          else if system.isWindows
            then [
              (hsPkgs."Win32-notify" or ((hsPkgs.pkgs-errors).buildDepError "Win32-notify"))
              ]
            else (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or ((hsPkgs.pkgs-errors).buildDepError "hfsevents")));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."uniqueid" or ((hsPkgs.pkgs-errors).buildDepError "uniqueid"))
            ] ++ (if system.isLinux
            then [
              (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
              ]
            else if system.isWindows
              then [
                (hsPkgs."Win32-notify" or ((hsPkgs.pkgs-errors).buildDepError "Win32-notify"))
                (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
                ]
              else (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or ((hsPkgs.pkgs-errors).buildDepError "hfsevents")));
          buildable = true;
          };
        };
      };
    }