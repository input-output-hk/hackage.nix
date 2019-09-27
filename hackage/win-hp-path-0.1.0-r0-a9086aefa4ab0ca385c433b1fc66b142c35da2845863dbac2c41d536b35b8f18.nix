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
      identifier = { name = "win-hp-path"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Yitzchak Gale";
      maintainer = "gale@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://github.com/ygale/win-hp-path";
      url = "";
      synopsis = "Work with multiple Haskell Platform versions on Windows";
      description = "This package provides the @use-hppath@ program\nfor working with multiple versions of the Haskell\nPlatform on Windows.\n\nWarning! The use of this program removes any\nfolders containing the string @\"Haskell\"@ from\nyour PATH. For Haskell Platform users on Windows,\nany such folder is only put into the PATH by\nHaskell Platform installations, so that behavior\nis what you want.\n\nWhen run in a command prompt window, @use-hppath@\nenters a sub-shell where the PATH is modified to\nuse the Haskell Platform installed at the path\nspecified on the comand line. In other words, it\nchanges the version of the Haskell Platform in\nthe current command prompt window only. To return\nto the original command line environment, enter\nthe command @exit@.\n\nExample usage:\n@use-hppath \"C:\\\\Program Files (x86)\\\\Haskell Platform\\\\2014.2.0.0\"@\n\nPlease note: @use-hppath@ always ensures that the\nhard-coded path\n@C:\\Program Files\\\\Haskell\\\\bin@\nis located on the PATH and overrides all other\nHaskell-related paths. This is similar to, but\nslightly different from, the behavior of the\nHaskell Platform itself. This can be a good place\nto put these executables and the batch files\ndescribed below.\n\nBatch files: This package also provides batch\nfiles that allow you to select an active Haskell\nPlatform version by specifying the GHC version,\nsimilar to how the corresponding shell scripts\nwork on Linux and Mac OS X. The batch file\n@use-hp.bat@ is a wrapper for @use-hppath@.  The\nscript @find-hp.bat@ provides the mapping from\nGHC version to Haskell Platform installation\nfolder. Currently, you must edit @find-hp.bat@ by\nhand. Place the two batch files somewhere on the\nPATH, such as\n@C:\\\\Program Files\\\\Haskell\\\\bin@.\nEdit @find-hp.bat@ to match the paths on your own\nPC when you first install it, and whenever you\nmodify the set of Haskell Platform versions\ninstalled on your PC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "use-hppath" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."win-hp-path" or (buildDepError "win-hp-path"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }