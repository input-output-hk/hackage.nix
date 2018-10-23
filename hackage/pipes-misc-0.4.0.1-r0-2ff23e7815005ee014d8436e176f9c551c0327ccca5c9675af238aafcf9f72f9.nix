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
        name = "pipes-misc";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/pipes-misc#readme";
      url = "";
      synopsis = "Miscellaneous utilities for pipes, required by glazier-tutorial";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "pipes-misc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.lens)
          (hsPkgs.Decimal)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-category)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "pipes-misc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.mmorph)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.pipes-misc)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }