{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-arbitrary"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "jay groven";
      homepage = "https://github.com/tsuraan/bytestring-arbitrary";
      url = "";
      synopsis = "Arbitrary instances for ByteStrings";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.cryptohash)
            (hsPkgs.bytestring-arbitrary)
            ];
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.QuickCheck)
            (hsPkgs.criterion)
            (hsPkgs.bytestring-arbitrary)
            ];
          };
        };
      };
    }