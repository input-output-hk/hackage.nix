{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fsnotify"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>, Roman Cheplyaka <roma@ro-che.info>";
      author = "Mark Dittmer <mark.s.dittmer@gmail.com>";
      homepage = "https://github.com/haskell-fswatch/hfsnotify";
      url = "";
      synopsis = "Cross platform library for file change notification.";
      description = "Cross platform library for file creation, modification,\nand deletion notification. This library builds upon\nexisting libraries for platform-specific Windows, Mac,\nand Linux filesystem event notification.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          ] ++ (if system.isLinux
          then [
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            ]
          else if system.isWindows
            then [
              (hsPkgs."Win32-notify" or ((hsPkgs.pkgs-errors).buildDepError "Win32-notify"))
              (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
              (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
              ]
            else (pkgs.lib).optionals (system.isOsx) [
              (hsPkgs."hfsevents" or ((hsPkgs.pkgs-errors).buildDepError "hfsevents"))
              (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
              (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
              ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."temporary-rc" or ((hsPkgs.pkgs-errors).buildDepError "temporary-rc"))
            ];
          buildable = true;
          };
        };
      };
    }