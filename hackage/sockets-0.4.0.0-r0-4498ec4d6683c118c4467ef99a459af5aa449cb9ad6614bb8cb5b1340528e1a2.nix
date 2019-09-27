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
    flags = {
      mmsg = false;
      verbose-errors = false;
      debug = false;
      checked = false;
      example = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "sockets"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/sockets";
      url = "";
      synopsis = "High-level network sockets";
      description = "This library provides a high-level abstraction for network sockets. It uses\nHaskell2010 (along with GADTs) without typeclasses to ensure that\nconsumers of the API can only call appropriate functions on a socket.\n\nExceptions are tracked in the types of functions and returned to the caller\nwith `Either`. The caller is free to handle these gracefully or to throw\nthem. This library has another class of exceptions described as _unrecoverable_.\nThis library only throws exceptions in three situations:\n\n* The library detects that it has misused the operating system's\nsockets API. This includes getting a `sockaddr` with an unexpected\nsocket family. It also includes getting an error code that should not\nbe possible. For example, the abstractions provided for both datagram\nsockets and stream sockets mean that `send` system calls in either\ncontext should never return the error code `ENOTCONN`. Consequently,\nthis error is treated as unrecoverable.\n\n* The caller asks for a negatively-sized slice of a buffer\n(such exceptions indicate a mistake in the code consuming this API).\n\n* A system call fails with `ENOBUFS` or `ENOMEM`. These indicate that\nthe operating system is out of memory. If this happens, the\nOut Of Memory (OOM) manager is likely killing processes to\nreclaim memory, so the process that received this message may\nbe killed soon. Making things even worse is that the GHC runtime\nrequests pages of memory from the operating system at times that\nare effectively unpredictable to Haskell developers. (Most\nmemory-managed languages have this behavior). Any attempt\nto recover from `ENOBUFS` or `ENOMEM` might cause the runtime to\nallocate memory from the operating system. According to the\ndocumentation for the <http://hackage.haskell.org/package/base-4.12.0.0/docs/Control-Exception-Base.html#t:AsyncException HeapOverflow>\nexception, an allocation failure at this point in time (likely given\nthe recent `ENOBUFS`/`ENOMEM`) would result in immidiate\ntermination of the program. So, although it is technically possible\nto recover from `ENOBUFS`/`ENOMEM`, the OOM killer and the\nGHC runtime make it impossible to do so reliably.  Consequently,\nthese error codes are treated as fatal.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."byteslice" or (buildDepError "byteslice"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."error-codes" or (buildDepError "error-codes"))
          (hsPkgs."ip" or (buildDepError "ip"))
          (hsPkgs."posix-api" or (buildDepError "posix-api"))
          (hsPkgs."primitive-addr" or (buildDepError "primitive-addr"))
          (hsPkgs."primitive-offset" or (buildDepError "primitive-offset"))
          (hsPkgs."primitive-unlifted" or (buildDepError "primitive-unlifted"))
          (hsPkgs."sockets-datagram-receive" or (buildDepError "sockets-datagram-receive"))
          (hsPkgs."sockets-datagram-receive-many" or (buildDepError "sockets-datagram-receive-many"))
          (hsPkgs."sockets-datagram-send" or (buildDepError "sockets-datagram-send"))
          (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
          (hsPkgs."sockets-stream-bidirectional" or (buildDepError "sockets-stream-bidirectional"))
          (hsPkgs."sockets-stream-send" or (buildDepError "sockets-stream-send"))
          (hsPkgs."sockets-stream-send-two" or (buildDepError "sockets-stream-send-two"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if flags.checked
          then [
            (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
            ]
          else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
        buildable = true;
        };
      sublibs = {
        "sockets-internal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."primitive-offset" or (buildDepError "primitive-offset"))
            (hsPkgs."primitive-unlifted" or (buildDepError "primitive-unlifted"))
            (hsPkgs."primitive-addr" or (buildDepError "primitive-addr"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
              ]
            else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
          buildable = true;
          };
        "sockets-interrupt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            ];
          buildable = true;
          };
        "sockets-buffer" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "sockets-datagram-send" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            (hsPkgs."sockets-buffer" or (buildDepError "sockets-buffer"))
            (hsPkgs."sockets-interrupt" or (buildDepError "sockets-interrupt"))
            ];
          buildable = true;
          };
        "sockets-datagram-receive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."primitive-offset" or (buildDepError "primitive-offset"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            (hsPkgs."sockets-buffer" or (buildDepError "sockets-buffer"))
            (hsPkgs."sockets-interrupt" or (buildDepError "sockets-interrupt"))
            ];
          buildable = true;
          };
        "sockets-datagram-receive-many" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."primitive-unlifted" or (buildDepError "primitive-unlifted"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."sockets-datagram-receive" or (buildDepError "sockets-datagram-receive"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
              ]
            else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
          buildable = true;
          };
        "sockets-stream-send" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            (hsPkgs."sockets-buffer" or (buildDepError "sockets-buffer"))
            (hsPkgs."sockets-interrupt" or (buildDepError "sockets-interrupt"))
            ];
          buildable = true;
          };
        "sockets-stream-receive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            (hsPkgs."sockets-buffer" or (buildDepError "sockets-buffer"))
            (hsPkgs."sockets-interrupt" or (buildDepError "sockets-interrupt"))
            ];
          buildable = true;
          };
        "sockets-stream-send-two" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."posix-api" or (buildDepError "posix-api"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            (hsPkgs."sockets-interrupt" or (buildDepError "sockets-interrupt"))
            (hsPkgs."sockets-stream-send" or (buildDepError "sockets-stream-send"))
            ];
          buildable = true;
          };
        "sockets-stream-bidirectional" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."error-codes" or (buildDepError "error-codes"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."sockets-internal" or (buildDepError "sockets-internal"))
            (hsPkgs."sockets-stream-send" or (buildDepError "sockets-stream-send"))
            (hsPkgs."sockets-stream-receive" or (buildDepError "sockets-stream-receive"))
            ];
          buildable = true;
          };
        };
      exes = {
        "sockets-example" = {
          depends = (pkgs.lib).optionals (flags.example) ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."sockets" or (buildDepError "sockets"))
            ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
              ]
            else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]));
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sockets" or (buildDepError "sockets"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."primitive-unlifted" or (buildDepError "primitive-unlifted"))
            (hsPkgs."primitive-addr" or (buildDepError "primitive-addr"))
            ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
              ]
            else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
          buildable = true;
          };
        };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sockets" or (buildDepError "sockets"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
              ]
            else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
          buildable = true;
          };
        "http" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sockets" or (buildDepError "sockets"))
            (hsPkgs."ip" or (buildDepError "ip"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (buildDepError "primitive-checked"))
              ]
            else [ (hsPkgs."primitive" or (buildDepError "primitive")) ]);
          buildable = true;
          };
        };
      };
    }