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
      specVersion = "1.8";
      identifier = { name = "fsnotify"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom McLaughlin <tom@codedown.io>";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          ] ++ (if system.isLinux
          then [
            (hsPkgs."hinotify" or (buildDepError "hinotify"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ]
          else if system.isWindows
            then [ (hsPkgs."Win32-notify" or (buildDepError "Win32-notify")) ]
            else (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or (buildDepError "hfsevents")));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = if system.isWindows
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."tasty" or (buildDepError "tasty"))
              (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
              (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
              (hsPkgs."async" or (buildDepError "async"))
              (hsPkgs."temporary" or (buildDepError "temporary"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."Win32" or (buildDepError "Win32"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."tasty" or (buildDepError "tasty"))
              (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
              (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
              (hsPkgs."async" or (buildDepError "async"))
              (hsPkgs."temporary" or (buildDepError "temporary"))
              (hsPkgs."random" or (buildDepError "random"))
              ];
          buildable = true;
          };
        };
      };
    }