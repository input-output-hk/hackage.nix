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
    flags = {
      mmsg = false;
      verbose-errors = false;
      debug = false;
      checked = false;
      example = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "sockets"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/sockets";
      url = "";
      synopsis = "High-level network sockets";
      description = "This library provides a high-level abstraction for network sockets. It uses\nHaskell2010 (along with GADTs) without typeclasses to ensure that\nconsumers of the API can only call appropriate functions on a socket.\n.\nExceptions are tracked in the types of functions and returned to the caller\nwith `Either`. The caller is free to handle these gracefully or to throw\nthem. This library has another class of exceptions described as _unrecoverable_.\nThis library only throws exceptions in three situations:\n.\n* The library detects that it has misused the operating system's\n  sockets API. This includes getting a `sockaddr` with an unexpected\n  socket family. It also includes getting an error code that should not\n  be possible. For example, the abstractions provided for both datagram\n  sockets and stream sockets mean that `send` system calls in either\n  context should never return the error code `ENOTCONN`. Consequently,\n  this error is treated as unrecoverable.\n.\n* The caller asks for a negatively-sized slice of a buffer\n  (such exceptions indicate a mistake in the code consuming this API).\n.\n* A system call fails with `ENOBUFS` or `ENOMEM`. These indicate that\n  the operating system is out of memory. If this happens, the\n  Out Of Memory (OOM) manager is likely killing processes to\n  reclaim memory, so the process that received this message may\n  be killed soon. Making things even worse is that the GHC runtime\n  requests pages of memory from the operating system at times that\n  are effectively unpredictable to Haskell developers. (Most\n  memory-managed languages have this behavior). Any attempt\n  to recover from `ENOBUFS` or `ENOMEM` might cause the runtime to\n  allocate memory from the operating system. According to the\n  documentation for the <http://hackage.haskell.org/package/base-4.12.0.0/docs/Control-Exception-Base.html#t:AsyncException HeapOverflow>\n  exception, an allocation failure at this point in time (likely given\n  the recent `ENOBUFS`/`ENOMEM`) would result in immidiate\n  termination of the program. So, although it is technically possible\n  to recover from `ENOBUFS`/`ENOMEM`, the OOM killer and the\n  GHC runtime make it impossible to do so reliably.  Consequently,\n  these error codes are treated as fatal.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
          (hsPkgs."systemd-api" or (errorHandler.buildDepError "systemd-api"))
          (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
          (hsPkgs."primitive-offset" or (errorHandler.buildDepError "primitive-offset"))
          (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
          (hsPkgs."sockets".components.sublibs.sockets-datagram-receive or (errorHandler.buildDepError "sockets:sockets-datagram-receive"))
          (hsPkgs."sockets".components.sublibs.sockets-datagram-receive-many or (errorHandler.buildDepError "sockets:sockets-datagram-receive-many"))
          (hsPkgs."sockets".components.sublibs.sockets-datagram-send or (errorHandler.buildDepError "sockets:sockets-datagram-send"))
          (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
          (hsPkgs."sockets".components.sublibs.sockets-stream-bidirectional or (errorHandler.buildDepError "sockets:sockets-stream-bidirectional"))
          (hsPkgs."sockets".components.sublibs.sockets-stream-send or (errorHandler.buildDepError "sockets:sockets-stream-send"))
          (hsPkgs."sockets".components.sublibs.sockets-stream-send-two or (errorHandler.buildDepError "sockets:sockets-stream-send-two"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ (if flags.checked
          then [
            (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
          ]
          else [
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ]);
        buildable = true;
      };
      sublibs = {
        "sockets-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."primitive-offset" or (errorHandler.buildDepError "primitive-offset"))
            (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
            (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
          buildable = true;
        };
        "sockets-interrupt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
          ];
          buildable = true;
        };
        "sockets-buffer" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "sockets-datagram-send" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
            (hsPkgs."sockets".components.sublibs.sockets-buffer or (errorHandler.buildDepError "sockets:sockets-buffer"))
            (hsPkgs."sockets".components.sublibs.sockets-interrupt or (errorHandler.buildDepError "sockets:sockets-interrupt"))
          ];
          buildable = true;
        };
        "sockets-datagram-receive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."primitive-offset" or (errorHandler.buildDepError "primitive-offset"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
            (hsPkgs."sockets".components.sublibs.sockets-buffer or (errorHandler.buildDepError "sockets:sockets-buffer"))
            (hsPkgs."sockets".components.sublibs.sockets-interrupt or (errorHandler.buildDepError "sockets:sockets-interrupt"))
          ];
          buildable = true;
        };
        "sockets-datagram-receive-many" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."sockets".components.sublibs.sockets-datagram-receive or (errorHandler.buildDepError "sockets:sockets-datagram-receive"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
          ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
          buildable = true;
        };
        "sockets-stream-send" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
            (hsPkgs."sockets".components.sublibs.sockets-buffer or (errorHandler.buildDepError "sockets:sockets-buffer"))
            (hsPkgs."sockets".components.sublibs.sockets-interrupt or (errorHandler.buildDepError "sockets:sockets-interrupt"))
          ];
          buildable = true;
        };
        "sockets-stream-receive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
            (hsPkgs."sockets".components.sublibs.sockets-buffer or (errorHandler.buildDepError "sockets:sockets-buffer"))
            (hsPkgs."sockets".components.sublibs.sockets-interrupt or (errorHandler.buildDepError "sockets:sockets-interrupt"))
          ];
          buildable = true;
        };
        "sockets-stream-send-two" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
            (hsPkgs."sockets".components.sublibs.sockets-interrupt or (errorHandler.buildDepError "sockets:sockets-interrupt"))
            (hsPkgs."sockets".components.sublibs.sockets-stream-send or (errorHandler.buildDepError "sockets:sockets-stream-send"))
          ];
          buildable = true;
        };
        "sockets-stream-bidirectional" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."sockets".components.sublibs.sockets-internal or (errorHandler.buildDepError "sockets:sockets-internal"))
            (hsPkgs."sockets".components.sublibs.sockets-stream-send or (errorHandler.buildDepError "sockets:sockets-stream-send"))
            (hsPkgs."sockets".components.sublibs.sockets-stream-receive or (errorHandler.buildDepError "sockets:sockets-stream-receive"))
          ];
          buildable = true;
        };
      };
      exes = {
        "sockets-example" = {
          depends = pkgs.lib.optionals (flags.example) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
          ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]));
          buildable = if flags.example then true else false;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
            (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
          buildable = true;
        };
      };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
          buildable = true;
        };
        "http" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          ] ++ (if flags.checked
            then [
              (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
            ]
            else [
              (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ]);
          buildable = true;
        };
      };
    };
  }