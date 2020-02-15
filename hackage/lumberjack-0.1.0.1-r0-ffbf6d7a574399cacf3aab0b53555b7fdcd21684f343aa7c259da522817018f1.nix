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
      identifier = { name = "lumberjack"; version = "0.1.0.1"; };
      license = "ISC";
      copyright = "2020, Galois Inc.";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/GaloisInc/lumberjack";
      url = "";
      synopsis = "Trek through your code forest and make logs";
      description = "This is a logging facility.  Yes, there are many, and this is the one\nwith a beard, wearing flannel and boots, that gets the job done.  It's\nnot the fanciest, it doesn't have a cargo-van full of features.  This\nlogger is designed to be straightforward to use, provide a good set of\nstandard features, and be useable across a broad set of code.\n\n* Logging is a monadic activity.  This activity is most often\nperformed in a monad stack with a MonadIO context to allow\nwriting to files.\n\n* The specific logging action implementations are managed separately\nfrom the actions of logging messages in the target code.  This\nallows logging to be configurable and the manner of logging to\nbe specified at startup time without requiring changes in the\ncode from which log messages are being generated.\n\n* The logging implementation code can use cofunctors to adjust\nexisting logging.\n\n* Main code will typically retrieve the logging actions from a\nReader context in your monad stack.\n\n* The prettyprinter package is used for formatting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "example_log" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."lumberjack" or (buildDepError "lumberjack"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }