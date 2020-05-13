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
    flags = { debug = false; foreign = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "atomic-primops"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree-queue/wiki";
      url = "";
      synopsis = "A safe approach to CAS and other atomic ops in Haskell.";
      description = "After GHC 7.4 a new `casMutVar#` primop became available, but it's\ndifficult to use safely, because pointer equality is a highly\nunstable property in Haskell.  This library provides a safer method\nbased on the concept of \"Tickets\".\n\nAlso, this library uses the \"foreign primop\" capability of GHC to\nadd access to other variants that may be of\ninterest, specifically, compare and swap inside an array.\n\nChanges in 0.3:\n\n* Major internal change.  Duplicate the barrier code from the GHC RTS and thus\nenable support for executables that are NOT built with '-threaded'.\n\nChanges in 0.4:\n\n* Further internal changes, duplicate 'cas' routine well as barriers.\n\n* Add `fetchAddByteArrayInt`\n\n* Add an `Unboxed` counter variant that uses movable \"ByteArray\"s on the GHC heap.\n\nChanges in 0.5:\n\n* Remove dependency on bits-atomic unless a flag is turned on.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ] ++ (pkgs.lib).optional (flags.foreign) (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"));
        buildable = true;
        };
      };
    }