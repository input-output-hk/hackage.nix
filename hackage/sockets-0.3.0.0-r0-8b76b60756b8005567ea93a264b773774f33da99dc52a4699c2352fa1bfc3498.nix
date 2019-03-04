{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mmsg = false; debug = false; example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "sockets"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/sockets";
      url = "";
      synopsis = "High-level network sockets";
      description = "This library provides a high-level abstraction for network sockets. It uses\nHaskell2010 (along with GADTs) without typeclasses to ensure that\nconsumers of the API can only call appropriate functions on a socket.\nExceptions are tracked in the types of functions and returned to the caller\nwith `Either`. The caller is free to handle these gracefully or to throw\nthem. This library only throws exceptions when it detects that it has misused\nthe operating system's sockets API (open an issue for this) or when the\ncaller asks for a negatively-sized slice of a buffer (such exceptions are\nunrecoverable and indicate a mistake in the code consuming this API).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ip)
          (hsPkgs.posix-api)
          (hsPkgs.primitive)
          (hsPkgs.stm)
          (hsPkgs.text)
          ];
        };
      exes = {
        "sockets-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs.base)
            (hsPkgs.sockets)
            (hsPkgs.ip)
            (hsPkgs.primitive)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            ];
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
            (hsPkgs.primitive)
            (hsPkgs.async)
            ];
          };
        };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sockets)
            (hsPkgs.ip)
            (hsPkgs.primitive)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            ];
          };
        };
      };
    }