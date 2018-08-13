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
        name = "vector-split";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "fho@f12n.de";
      author = "Florian Hofmann";
      homepage = "https://github.com/fhaust/vector-split#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "vector-split" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "vector-split-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.vector-split)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }