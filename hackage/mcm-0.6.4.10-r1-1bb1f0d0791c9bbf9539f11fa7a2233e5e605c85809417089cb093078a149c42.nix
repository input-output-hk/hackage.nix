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
      specVersion = "1.9.2";
      identifier = { name = "mcm"; version = "0.6.4.10"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013-2016 Anthony Doggett";
      maintainer = "Anthony Doggett <mcm@interfaces.org.uk>";
      author = "Anthony Doggett <mcm@interfaces.org.uk>";
      homepage = "http://interfaces.org.uk/mcm";
      url = "";
      synopsis = "Machine Configuration Manager";
      description = "Machine Configuration Manager (MCM) manages the contents of files and\ndirectories.  One or more of those files can be a script, enabling MCM to\ncontrol anything.  Typically MCM is used to manage the configurations of user\nprofiles, machines, systems and systems of systems.\n\n* The declarative language is simple and easy on the eye yet very powerful.\n\n* MCM is simple, fast and transparent.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "commands2html" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "mcm" = {
          depends = [
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hostname" or (buildDepError "hostname"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        "mcm2html" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "mcmtags" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        };
      };
    }