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
      identifier = { name = "console-program"; version = "0.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "Arie Peterson";
      homepage = "";
      url = "";
      synopsis = "Interpret the command line and a config file as commands and options";
      description = "This library provides a framework to build command line programs.\n\n\nThe constructed program can have several \\\"commands\\\" that provide different modes of operation.\nOptions can be declared to allow fine-tuning of the behaviour of the program.\nThese options are read from the command line when running the program\nand from a simple configuration file.\n\n\nAdditionally, there is an interactive mode that reads and executes commands from standard input.\n\n\nExamples of using this library may be found in the Examples directory in the package tarball.\n\n\nIt provides functionality similar to the cmdargs package. Main differences:\n\n- console-program does not use unsafePerformIO, and tries to give a more haskellish, referentially transparent interface;\n\n- it allows a full tree of commands, instead of a list, so a command can have subcommands;\n\n- it parses a configuration file, in addition to the command line arguments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."parsec-extra" or (buildDepError "parsec-extra"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        };
      };
    }