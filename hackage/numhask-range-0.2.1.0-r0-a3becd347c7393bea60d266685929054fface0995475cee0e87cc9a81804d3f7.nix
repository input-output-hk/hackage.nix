{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "numhask-range"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-range#readme";
      url = "";
      synopsis = "Numbers that are range representations";
      description = "Numbers that represent ranges of all sorts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.distributive)
          (hsPkgs.numhask-prelude)
          (hsPkgs.protolude)
          (hsPkgs.semigroupoids)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.numhask-prelude)
            (hsPkgs.numhask-range)
            (hsPkgs.tasty)
            ];
          };
        };
      };
    }