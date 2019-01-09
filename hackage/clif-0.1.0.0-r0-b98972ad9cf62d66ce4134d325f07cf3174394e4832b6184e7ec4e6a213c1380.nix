{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clif"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2016-2017 Matti Eskelinen";
      maintainer = "matti.a.eskelinen@gmail.com";
      author = "Matti Eskelinen";
      homepage = "";
      url = "";
      synopsis = "A Clifford algebra number type for Haskell";
      description = "Clif is a library for symbolic and numeric computations on Clifford algebras using Haskell. It is general enough to handle finite and infinite-dimensional Clifford algebras arising from arbitrary bilinear forms, within limitations of computability. To get started, read \"Clif.Tutorial\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.containers) ];
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.clif)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      benchmarks = {
        "bench-clifProduct" = {
          depends = [ (hsPkgs.clif) (hsPkgs.base) (hsPkgs.time) ];
          };
        };
      };
    }