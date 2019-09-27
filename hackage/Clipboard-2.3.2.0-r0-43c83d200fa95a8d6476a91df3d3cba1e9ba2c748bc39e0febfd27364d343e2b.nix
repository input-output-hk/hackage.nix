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
      specVersion = "1.6";
      identifier = { name = "Clipboard"; version = "2.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz `at` gmail.com";
      author = "Sævar Berg (Windows), Matthew Bekkema (X11), Daniel Díaz (Maintainer)";
      homepage = "http://haskell.org/haskellwiki/Clipboard";
      url = "";
      synopsis = "System clipboard interface.";
      description = "/Clipboard/ is a library for easily interfacing with the system clipboard with additional unicode support.\nCurrently, only in a Windows or GNU/Linux (X11) system.\n\nFor example, if you type:\n\n> \$ setClipboardString \"Hello, World!\"\n\nThen you have @\\\"Hello, World!\\\"@ available to be pasted wherever you want.\n\nNow, if you type:\n\n> \$ modifyClipboardString reverse\n\nYou will have @\\\"!dlroW ,olleH\\\"@ in your clipboard. So:\n\n> \$ getClipboardString\n> \"!dlroW ,olleH\"\n\nThe X11 version depends on the @X11@ package, so you will need the X11 development library\navailable on your system at compile time. You can install it by @sudo apt-get install libxrandr-dev@\n(or the equivalent on your system).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isWindows
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
        buildable = true;
        };
      };
    }