{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mmsg = false; debug = false; example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "sockets"; version = "0.3.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."error-codes" or ((hsPkgs.pkgs-errors).buildDepError "error-codes"))
          (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
          (hsPkgs."posix-api" or ((hsPkgs.pkgs-errors).buildDepError "posix-api"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "sockets-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sockets" or ((hsPkgs.pkgs-errors).buildDepError "sockets"))
            (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sockets" or ((hsPkgs.pkgs-errors).buildDepError "sockets"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sockets" or ((hsPkgs.pkgs-errors).buildDepError "sockets"))
            (hsPkgs."ip" or ((hsPkgs.pkgs-errors).buildDepError "ip"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
            ];
          buildable = true;
          };
        };
      };
    }