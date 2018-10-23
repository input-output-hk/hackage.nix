{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cryptohash";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez";
      homepage = "";
      url = "";
      synopsis = "crypto hashes fast and practical";
      description = "Efficient crypto hash computation";
      buildType = "Simple";
    };
    components = {
      "cryptohash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "Tests" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }