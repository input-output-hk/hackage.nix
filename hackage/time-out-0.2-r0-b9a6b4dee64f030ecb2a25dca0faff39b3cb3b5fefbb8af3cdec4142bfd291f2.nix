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
      identifier = { name = "time-out"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://hub.darcs.net/fr33domlover/time-out";
      url = "";
      synopsis = "Timers, timeouts, alarms, monadic wrappers";
      description = "This library provides several timer and timeout related tools:\n\n* \"Control.Timeout\" - Execution of a computation with a time limit, aborting\nit if the limit is reached before the computation finishes. It is\nmore-or-less a lifted version of \"System.Timeout\" from the @base@ package.\nIt's good for single use, but it launches a temporary helper thread. If you\nwant to time-limit actions continuously (e.g. if you're implementing a\nnetwork protocol), you should probably use one of the other tools described\nbelow, since they use a single dedicated thread for all the timeouts.\n\n* \"Control.Timer\" - Managing a timer running in a dedicated thread. The timer\nwaits for an amount of time you specify, and then runs an action you\nspecify. You can stop and restart it at any time.\n\n* \"Control.Alarm\" - Managing an alarm, which is a timer whose action is to\nnotify your thread when the specified amount of time passes.\n\n* \"Control.Monad.Trans.Timer\" - A monad transformer for managing a timer\n\n* \"Control.Monad.Trans.Alarm\" - A monad transformer for managing an alarm\n\n* \"Control.Monad.Trans.Timeout\" - A monad transformer for running actions\nwith timeouts, useful for e.g. network protocols where any send and receive\ncan timeout\n\n* \"Control.Monad.Timeout.Class\" - A monad typeclass for running actions with\na time limit. \"Control.Timeout\" provides a simple trivial for IO (which can\nthen be used with any @MonadIO@), and \"Control.Monad.Trans.Timeout\"\nprovides a scalable instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."time-interval" or (buildDepError "time-interval"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time-out" or (buildDepError "time-out"))
            (hsPkgs."time-units" or (buildDepError "time-units"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }