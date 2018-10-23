{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = {
        name = "stego-uuid";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dimitri DeFigueiredo";
      maintainer = "defigueiredo@ucdavis.edu";
      author = "Dimitri DeFigueiredo";
      homepage = "https://github.com/dimitri-xyz/stego-uuid#readme";
      url = "";
      synopsis = "Generator and verifier for steganographic numbers";
      description = "`stego-uuid` allows one to mark 128-bit UUIDs. If created from a random 64-bit number, the\nwhole 128-bit UUID will look random to everyone, except those who know the secret detection key.";
      buildType = "Simple";
    };
    components = {
      "stego-uuid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uuid)
          (hsPkgs.cryptonite)
          (hsPkgs.bytestring)
          (hsPkgs.memory)
        ];
      };
      tests = {
        "test-stego-uuid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stego-uuid)
            (hsPkgs.random)
            (hsPkgs.uuid)
          ];
        };
      };
    };
  }