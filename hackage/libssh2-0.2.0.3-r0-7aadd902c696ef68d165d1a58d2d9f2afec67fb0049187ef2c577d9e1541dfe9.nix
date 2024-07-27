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
    flags = { gcrypt = false; example-client = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libssh2"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "https://github.com/portnov/libssh2-hs";
      url = "";
      synopsis = "FFI bindings to libssh2 SSH2 client library (http://libssh2.org/)";
      description = "This package provides FFI bindings for SSH2 client library named libssh2.\n\nAs of version 0.2 all blocking is handled in Haskell code\nrather than in C code. This means that all calls are now\ninterruptable using Haskell asynchronous exceptions; for\ninstance, it is now possible to use \"System.Timeout\" in\ncombination with \"libssh2\".\n\n/Note on usage on Windows/: On Windows you MUST compile\nyour executable with @-threaded@ or 'libssh2' will NOT\nwork. We have tested 'libssh2' on Windows using\n<http://mingw.org/>, with <http://www.openssl.org/> and\n<http://libssh2.org/> compiled from source (be sure to pass\nthe 'shared' option to the configure script for 'openssl'\nto enable the shared libraries).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."ssh2" or (errorHandler.sysDepError "ssh2")) ];
        pkgconfig = [
          (pkgconfPkgs."libssh2" or (errorHandler.pkgConfDepError "libssh2"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "hs-ssh-client" = {
          depends = pkgs.lib.optionals (flags.example-client) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if flags.example-client then true else false;
        };
      };
    };
  }