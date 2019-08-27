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
      specVersion = "1.2";
      identifier = { name = "precis"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Diff Cabal packages.";
      description = "Summarize API differences between revisions of Cabal packages.\n\nPrecis library is BSD3, Precis executable is LGPL apropos\nthe dependency on CppHs.\n\nNOTE for version 0.5.0 - the next version is likely to have\nsubstantial changes. Version 0.5.0 does have a better strategy\nto resolve conditional modules, but otherwise it is not a\ncompelling upgrade. If you have 0.4.0 installed, I recommend\nyou skip this revision and wait for the next version.\n\nCHANGES\n0.4.0 to 0.5.0\n\n* Major re-organization. Module-to-file resolution substantially\nchanged. Should be better for Cabal fines that use condition\nvariables.\n\n0.3.1 to 0.4.0\n\n* Substantial changes to reporting - now a summary is printed\nto the console, and an HTML report can be generated via a\ncommand line flag.\n\n* Changed constructor names for Edit data type\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."cpphs" or (buildDepError "cpphs"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ];
        };
      exes = { "precis" = {}; };
      };
    }