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
    flags = { gcrypt = false; example-client = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libssh2"; version = "0.2.0.6"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        libs = [ (pkgs."ssh2" or (sysDepError "ssh2")) ];
        pkgconfig = [ (pkgconfPkgs."libssh2" or (pkgConfDepError "libssh2")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hs-ssh-client" = {
          depends = (pkgs.lib).optionals (flags.example-client) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."libssh2" or (buildDepError "libssh2"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = if flags.example-client then true else false;
          };
        };
      };
    }