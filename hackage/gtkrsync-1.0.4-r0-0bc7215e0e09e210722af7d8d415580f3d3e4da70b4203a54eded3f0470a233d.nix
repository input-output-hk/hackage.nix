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
      specVersion = "0";
      identifier = { name = "gtkrsync"; version = "1.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2007-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://hg.complete.org/gtkrsync";
      url = "";
      synopsis = "Gnome rsync progress display";
      description = "gtkrsync is a simple GUI that displays a running status display\nbuilt from rsync.  This status display includes a per-file and overall status\nbar, overall estimated time to completion, and an expandable button that shows\nall rsync status output.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gtkrsync" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."gconf" or (buildDepError "gconf"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "gtkrsyncp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."gconf" or (buildDepError "gconf"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }