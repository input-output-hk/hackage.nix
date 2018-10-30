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
        name = "pipes-misc";
        version = "0.2.0.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
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
            (hsPkgs.pipes)
            (hsPkgs.pipes-misc)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }