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
      identifier = { name = "time-cache"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/time-cache";
      url = "";
      synopsis = "Cache current time and formatted time text";
      description = "Suppose you have an IO action which runs very frequently, and one of the\nthings it does is getting the current @UTCTime@, possibly also formatting it\ninto a String or Text. The action cares about the current minute, and doesn't\ncare about seconds or milliseconds at all. Instead of reading and formatting\nthe time many times, using this library you can keep a cache which updates\nevery minute (or other interval) and allows your application to scale without\ntime reading and formatting ever becoming a bottleneck.\n\nThere are 2 modules provided. I suggest you start with the monadic one,\nespecially for simple usage, and switch to the other one if you need\nsome custom solution.\n\nThe \"Data.Time.Cache\" module allows you to create a time caching action which\nreturns time and a formatted time string. But instead of directly reading the\ntime and running a formatter, it takes the values from a cache it\nperiodically updates.\n\nThe \"Control.Monad.Trans.Time\" module provides a convenient monadic wrapper\nfor the time cache.\n\nIf you need the time cache in multiple threads, you can create the time\ngetter once and then pass to all the threads to share.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."auto-update" or (buildDepError "auto-update"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }