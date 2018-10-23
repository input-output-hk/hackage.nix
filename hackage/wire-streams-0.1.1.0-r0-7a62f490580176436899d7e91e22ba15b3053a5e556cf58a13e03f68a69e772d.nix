{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wire-streams";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "Winterland";
      homepage = "https://github.com/winterland1989/wire-streams";
      url = "";
      synopsis = "Fast binary io-streams adapter.";
      description = "Fast binary io-streams adapter.";
      buildType = "Simple";
    };
    components = {
      "wire-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.binary-parsers)
          (hsPkgs.io-streams)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.io-streams)
            (hsPkgs.wire-streams)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
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