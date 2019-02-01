{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "sockets"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/sockets";
      url = "";
      synopsis = "High-level network sockets";
      description = "High-level abstraction for network sockets";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.posix-api)
          (hsPkgs.primitive)
          (hsPkgs.ip)
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
            ];
          };
        };
      };
    }