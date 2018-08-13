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
        name = "mezzo";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "2016 Dima Samozvancev";
      maintainer = "ds709@cam.ac.uk";
      author = "Dima Szamozvancev";
      homepage = "https://github.com/DimaSamoz/mezzo";
      url = "";
      synopsis = "Typesafe music composition";
      description = "A Haskell music composition library that enforces common\nmusical rules in the type system.";
      buildType = "Simple";
    };
    components = {
      "mezzo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.template-haskell)
          (hsPkgs.HCodecs)
          (hsPkgs.boxes)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "mezzo-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mezzo)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.deepseq)
            (hsPkgs.should-not-typecheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }