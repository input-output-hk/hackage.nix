{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mixed-strategies";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "http://wiki.cs.pdx.edu/bartforge/oms";
      url = "";
      synopsis = "Find optimal mixed strategies for two-player games";
      description = "A Haskell implementation of the method of\nChapter 6 of The Compleat Strategyst\n(J.D. Williams, McGraw-Hill 1955) for\nfinding optimal mixed strategies for\ntwo-player hidden information games\ngiven a payoff matrix.";
      buildType = "Simple";
    };
    components = {
      "mixed-strategies" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.simple-tabular)
        ];
      };
      exes = {
        "oms" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.simple-tabular)
            (hsPkgs.mixed-strategies)
          ];
        };
      };
    };
  }