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
      specVersion = "1.10";
      identifier = {
        name = "linear-circuit";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/linear-circuit";
      url = "";
      synopsis = "Compute resistance of linear electrical circuits";
      description = "Compute resistance of linear electrical circuits.\n\nFor examples see test directory.";
      buildType = "Simple";
    };
    components = {
      "linear-circuit" = {
        depends  = [
          (hsPkgs.comfort-graph)
          (hsPkgs.hmatrix)
          (hsPkgs.containers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
      tests = {
        "test-linear-circuit" = {
          depends  = [
            (hsPkgs.linear-circuit)
            (hsPkgs.QuickCheck)
            (hsPkgs.comfort-graph)
            (hsPkgs.non-empty)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }