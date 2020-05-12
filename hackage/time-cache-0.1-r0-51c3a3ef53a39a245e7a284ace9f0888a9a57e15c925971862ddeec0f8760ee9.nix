{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."auto-update" or (errorHandler.buildDepError "auto-update"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }