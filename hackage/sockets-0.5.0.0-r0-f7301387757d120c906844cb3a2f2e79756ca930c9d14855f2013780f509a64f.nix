{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "sockets"; version = "0.5.0.0"; };
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
          (hsPkgs.base)
          (hsPkgs.byteslice)
          (hsPkgs.bytestring)
          (hsPkgs.error-codes)
          (hsPkgs.ip)
          (hsPkgs.posix-api)
          (hsPkgs.primitive-addr)
          (hsPkgs.primitive-offset)
          (hsPkgs.primitive-unlifted)
          (hsPkgs.sockets-datagram-receive)
          (hsPkgs.sockets-datagram-receive-many)
          (hsPkgs.sockets-datagram-send)
          (hsPkgs.sockets-internal)
          (hsPkgs.sockets-stream-bidirectional)
          (hsPkgs.sockets-stream-send)
          (hsPkgs.sockets-stream-send-two)
          (hsPkgs.stm)
          (hsPkgs.text)
          ] ++ (if flags.checked
          then [ (hsPkgs.primitive-checked) ]
          else [ (hsPkgs.primitive) ]);
        };
      sublibs = {
        "sockets-internal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ip)
            (hsPkgs.posix-api)
            (hsPkgs.primitive-offset)
            (hsPkgs.primitive-unlifted)
            (hsPkgs.primitive-addr)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.byteslice)
            ] ++ (if flags.checked
            then [ (hsPkgs.primitive-checked) ]
            else [ (hsPkgs.primitive) ]);
          };
        "sockets-interrupt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.stm)
            (hsPkgs.sockets-internal)
            ];
          };
        "sockets-buffer" = { depends = [ (hsPkgs.base) ]; };
        "sockets-datagram-send" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.posix-api)
            (hsPkgs.stm)
            (hsPkgs.sockets-internal)
            (hsPkgs.sockets-buffer)
            (hsPkgs.sockets-interrupt)
            ];
          };
        "sockets-datagram-receive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.stm)
            (hsPkgs.posix-api)
            (hsPkgs.primitive-offset)
            (hsPkgs.sockets-internal)
            (hsPkgs.sockets-buffer)
            (hsPkgs.sockets-interrupt)
            ];
          };
        "sockets-datagram-receive-many" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.stm)
            (hsPkgs.posix-api)
            (hsPkgs.primitive-unlifted)
            (hsPkgs.byteslice)
            (hsPkgs.sockets-datagram-receive)
            (hsPkgs.sockets-internal)
            ] ++ (if flags.checked
            then [ (hsPkgs.primitive-checked) ]
            else [ (hsPkgs.primitive) ]);
          };
        "sockets-stream-send" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.posix-api)
            (hsPkgs.stm)
            (hsPkgs.sockets-internal)
            (hsPkgs.sockets-buffer)
            (hsPkgs.sockets-interrupt)
            ];
          };
        "sockets-stream-receive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.posix-api)
            (hsPkgs.stm)
            (hsPkgs.sockets-internal)
            (hsPkgs.sockets-buffer)
            (hsPkgs.sockets-interrupt)
            ];
          };
        "sockets-stream-send-two" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.posix-api)
            (hsPkgs.stm)
            (hsPkgs.sockets-internal)
            (hsPkgs.sockets-interrupt)
            (hsPkgs.sockets-stream-send)
            ];
          };
        "sockets-stream-bidirectional" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.error-codes)
            (hsPkgs.stm)
            (hsPkgs.sockets-internal)
            (hsPkgs.sockets-stream-send)
            (hsPkgs.sockets-stream-receive)
            ];
          };
        };
      exes = {
        "sockets-example" = {
          depends = (pkgs.lib).optionals (flags.example) ([
            (hsPkgs.base)
            (hsPkgs.byteslice)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.ip)
            (hsPkgs.sockets)
            ] ++ (if flags.checked
            then [ (hsPkgs.primitive-checked) ]
            else [ (hsPkgs.primitive) ]));
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sockets)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.ip)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.byteslice)
            (hsPkgs.primitive-unlifted)
            (hsPkgs.primitive-addr)
            (hsPkgs.stm)
            ] ++ (if flags.checked
            then [ (hsPkgs.primitive-checked) ]
            else [ (hsPkgs.primitive) ]);
          };
        };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sockets)
            (hsPkgs.ip)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            ] ++ (if flags.checked
            then [ (hsPkgs.primitive-checked) ]
            else [ (hsPkgs.primitive) ]);
          };
        "http" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sockets)
            (hsPkgs.ip)
            (hsPkgs.bytestring)
            (hsPkgs.byteslice)
            ] ++ (if flags.checked
            then [ (hsPkgs.primitive-checked) ]
            else [ (hsPkgs.primitive) ]);
          };
        };
      };
    }