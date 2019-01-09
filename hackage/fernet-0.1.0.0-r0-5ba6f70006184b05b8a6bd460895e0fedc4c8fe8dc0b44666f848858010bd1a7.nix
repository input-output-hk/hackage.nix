{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cli = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fernet"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "2017 Rodney Lorrimar";
      maintainer = "dev@rodney.id.au";
      author = "Rodney Lorrimar";
      homepage = "https://github.com/rvl/fernet-hs";
      url = "";
      synopsis = "Generate and verify HMAC-based authentication tokens.";
      description = "Originally designed for use within OpenStack clusters,\n/Fernet/ is intended to be fast and light-weight, with\nnon-persistent tokens. Fernet tokens are signed with a\nSHA256 HMAC and their contents encrypted with AES128\nin CBC mode.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.time)
          ];
        };
      exes = {
        "fernet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fernet)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.memory)
            (hsPkgs.time)
            (hsPkgs.unix)
            ];
          };
        };
      tests = {
        "fernet-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fernet)
            (hsPkgs.memory)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            ];
          };
        };
      };
    }