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
      specVersion = "2.2";
      identifier = { name = "posix-api"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/posix-api";
      url = "";
      synopsis = "posix bindings";
      description = "This library provides a very thin wrapper around POSIX APIs. It can be\ncompiled on any operating system that implements the standard as specified\nin <http://pubs.opengroup.org/onlinepubs/9699919799/ IEEE Std 1003.1>\nfaithfully. It has similar goals as the `unix` package, but its design\ndiffers in several areas:\n\n* `ByteArray` and `Addr` are used pervasively. There is no use of\n`String` in this library.\n\n* Functions do not throw errors. This library uses `IO (Either Errno a)`\nin places where `unix` would use `IO a`.\n\n* The numeric types from `Foreign.C.Types` and `System.Posix.Types` are\nused in the type signatures of functions so that a haskell function's\ntype signature matches its underlying POSIX equivalent exactly.\n\n* Flags are newtypes over `CInt` (or whatever integral type matches the\nposix specification) rather than enumerations. The data constructors\nare exported, making the types extensible for operating system that\nhave additional flags.\n\nAbout a dozen other packages offers wrappers for some subset of the POSIX\nspecification are strewn across hackage. They include `regex-posix`,\n`posix-paths`, `posix-timer`, `posix-socket`, `posix-filelock`,\n`posix-acl`, etc. This library differs from all off these in various\nways. Here are some of the design guidelines followed here that distinguish\nthis package from some or all of these others:\n\n* Scope. Although this library does not include all APIs specified by\nPOSIX, it welcomes as many of them as anyone is willing to implement.\n\n* Monomorphization. Effectful functions in this library return their\nresults in `IO` rather than using a type that involves `MonadIO`\nor `MonadBaseControl`.\n\n* Typeclass avoidance. This library does not introduce new typeclasses.\nOverloading is eschewed in favor of providing multiple functions\nwith distinct names.\n\n* Minimality. Functions wrapping the POSIX APIs do little more than\nwrap the underlying functions. The major deviation here is that,\nwhen applicable, the wrappers allocate buffers are the underlying\nfunctions fill. This eschews C's characteristic buffer-passing\nin favor of the Haskell convention of allocating internally and returning.\nA more minor deviation is that for safe FFI calls, this library\nwill perform additional work to ensure that only pinned byte arrays are\nhanded over.\n\nUnlike `network`, this sockets API in this library does not integrate\nsockets with GHC's event manager. This is geared\ntoward an audience that understands how to use `threadWaitRead`\nand `threadWaitWrite` with unsafe FFI calls to avoid blocking\nthe runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
    };
  }