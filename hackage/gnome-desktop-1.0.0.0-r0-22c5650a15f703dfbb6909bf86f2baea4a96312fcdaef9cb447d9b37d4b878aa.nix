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
      identifier = { name = "gnome-desktop"; version = "1.0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2009 Colin Adams";
      maintainer = "colin@colina.demon.co.uk";
      author = "Colin Adams";
      homepage = "";
      url = "";
      synopsis = "Randomly set a picture as the GNOME desktop background";
      description = "gnome-desktop is a program for displaying random pictures on your GNOME desktop background.\nIt reads a sub-directory of \$HOME (by default: Pictures) every n\nminutes (default: 1440 = once/per day) and every s seconds (default:\n50) picks a random file and sets the gconf key\n/desktop/gnome/background/picture_filename to the absolute path to\nthat file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gnome-desktop" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gconf" or (buildDepError "gconf"))
            ];
          };
        };
      };
    }