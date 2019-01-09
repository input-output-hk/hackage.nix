{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "numhask"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask";
      url = "";
      synopsis = "A numeric prelude";
      description = "A numeric prelude, providing a clean structure for numbers and operations that combine them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.adjunctions)
          (hsPkgs.distributive)
          (hsPkgs.singletons)
          (hsPkgs.matrix)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.numhask)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }