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
      identifier = { name = "noodle"; version = "0.0.18"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Jesse Rudolph";
      author = "Jesse Rudolph";
      homepage = "https://github.com/jessopher/noodle";
      url = "";
      synopsis = "the noodle programming language";
      description = "The @noodle@ Programming Language Interpreter\n\nNoodle is two things. It is a programming language, and it is this implementation\nof that programming language.\n\n/Briefly.../\n\nNoodle (the language) is functional, latently typed, and statically scoped.\nNoodle has no language level concept of mutable state.\nData abstraction is handled with 'scope bound' wrappers that prevent pattern matching on some value outside\nof some mutually recursive scope.\nNumbers are arbitrary precision integer ratios.\nOperators are (possibly) high order functions with special application rules that omit evaluation of the\nright operand if their application to the left operand does not return a function.\nModules are mutually recursive internally, are first class, and can be parameterized by constructing them with functions.\nRather than arrays or linked lists, the most basic compound data structure in noodle is a binary tree, or 'product'.\n\n\nthe primary points of interest in this package are:\n\n[@noodle@]      the option directed command line interface\n\n[@noodle-repl@] the read-eval-print-loop\n\n[@noodle-eval@] an interface for evaluating a single noodle\nexpression (computation) from stdin\n\n\nYou may also incorporate noodle into your own program as a library,\nbut this is /even less documented/ than the /completely undocumented/ command\nline interface... so I don't know why you would want to do this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "noodle" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."noodle" or (buildDepError "noodle"))
            ];
          buildable = true;
          };
        "noodle-repl" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."noodle" or (buildDepError "noodle"))
            ];
          buildable = true;
          };
        "noodle-eval" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."noodle" or (buildDepError "noodle"))
            ];
          buildable = true;
          };
        };
      };
    }