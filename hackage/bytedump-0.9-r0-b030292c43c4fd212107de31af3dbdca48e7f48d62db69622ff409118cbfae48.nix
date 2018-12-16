{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bytedump";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-bytedump";
      url = "";
      synopsis = "Flexible byte dump helpers for human readers.";
      description = "A set of helpers to dump bytes with lots of different output formats\neasy to read for humans eyes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "Hexdump" = {
          depends = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }