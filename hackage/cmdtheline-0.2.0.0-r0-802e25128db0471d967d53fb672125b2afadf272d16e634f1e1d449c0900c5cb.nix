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
      identifier = { name = "cmdtheline"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Eli Frey <eli.lee.frey gmail com>";
      author = "Eli Frey";
      homepage = "http://github.com/eli-frey/cmdtheline";
      url = "";
      synopsis = "Declarative command-line option parsing and documentation library.";
      description = "CmdTheLine aims to remove tedium from the definition of command-line\nprograms, producing usage, help and man pages with little effort.\n\nThe inspiration was found in Daniel Bunzli's\n<http://erratique.ch/software/cmdliner> library.\n\nCmdTheLine uses applicative functors to provide a declarative, compositional\nmechanism for defining command-line programs by lifting regular Haskell\nfunctions over argument parsers.\n\nSuggestions, comments, and bug reports are appreciated. Please see the\nbug and issue tracker at <http://github.com/eli-frey/cmdtheline>.\n\nChanges since 0.1:\n\n* More type safety: Types in CmdTheLine.Arg have been made more explicit to\ndisalow unwanted behavior.  Positional argument information and optional\nargument information are distinguished from each other.  As well 'Arg's must\nbe transformed into 'Term' before use, as some operations make since to\nperform on 'Arg' but not on 'Term'.\n\n* ArgVal has only one method: 'parser' and 'pp' have been fused into a tuple, so\nthat instantiation of 'ArgVal' can be simplified for all parties.\n\n* Err is an instance of MonadIO:  The 'Err' monad now supports IO action.\n\n* File and Directory path validation:  Taking advantage of new 'Err'\ncapabilities, the library provides new functions for validating 'String's\ninside of 'Term's as being valid\\/existent file\\/directory paths.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      };
    }