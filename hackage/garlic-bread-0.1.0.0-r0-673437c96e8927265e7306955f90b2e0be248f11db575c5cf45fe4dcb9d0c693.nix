{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "garlic-bread";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/garlic-bread#readme";
      url = "";
      synopsis = "A monad transformer for keeping track of where you've come from.";
      description = "Please see the README on Github at <https://github.com/parsonsmatt/garlic-bread#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "garlic-bread-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.garlic-bread)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }