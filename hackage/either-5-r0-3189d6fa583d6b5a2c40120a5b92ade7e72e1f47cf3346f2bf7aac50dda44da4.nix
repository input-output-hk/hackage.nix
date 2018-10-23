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
        name = "either";
        version = "5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2017 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/either/";
      url = "";
      synopsis = "Combinators for working with sums";
      description = "Combinators for working with sums.";
      buildType = "Simple";
    };
    components = {
      "either" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }