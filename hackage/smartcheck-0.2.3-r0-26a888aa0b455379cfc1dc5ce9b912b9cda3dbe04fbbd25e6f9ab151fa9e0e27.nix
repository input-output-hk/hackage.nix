{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      regression-flag = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "smartcheck";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "copyright, Lee Pike 2012.";
      maintainer = "leepike@gmail.com";
      author = "Lee Pike";
      homepage = "https://github.com/leepike/SmartCheck";
      url = "";
      synopsis = "A smarter QuickCheck.";
      description = "See the README.md: fast, small shrinking and generalization of failing test-cases from QuickCheck.";
      buildType = "Simple";
    };
    components = {
      "smartcheck" = {
        depends  = if flags.regression-flag
          then [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.generic-deriving)
            (hsPkgs.ghc-prim)
            (hsPkgs.lazysmallcheck)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.generic-deriving)
            (hsPkgs.ghc-prim)
          ];
      };
      exes = {
        "sc-qc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.smartcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.generic-deriving)
            (hsPkgs.ghc-prim)
          ];
        };
      };
    };
  }