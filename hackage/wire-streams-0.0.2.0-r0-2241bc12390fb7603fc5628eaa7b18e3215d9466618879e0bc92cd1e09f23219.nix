{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wire-streams";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, Petter Bergman, Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "Michael Xavier, Petter Bergman, Winterland";
      homepage = "";
      url = "";
      synopsis = "Use cereal or binary with io-streams.";
      description = "Use cereal or binary with io-streams.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.binary)
          (hsPkgs.io-streams)
        ];
      };
      tests = {
        "encode-decode-cereal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.io-streams)
            (hsPkgs.wire-streams)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-test-quickcheck)
          ];
        };
        "encode-decode-binary" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.io-streams)
            (hsPkgs.wire-streams)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-test-quickcheck)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wire-streams)
            (hsPkgs.criterion)
            (hsPkgs.io-streams)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.binary)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }