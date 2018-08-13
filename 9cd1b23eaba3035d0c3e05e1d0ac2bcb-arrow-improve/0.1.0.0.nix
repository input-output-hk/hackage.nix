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
        name = "arrow-improve";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "© Alistair Lynn, 2014";
      maintainer = "arplynn@gmail.com";
      author = "Alistair Lynn";
      homepage = "https://github.com/prophile/arrow-improve/";
      url = "";
      synopsis = "Improved arrows.";
      description = "Optimisations to arrows.";
      buildType = "Simple";
    };
    components = {
      "arrow-improve" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.arrows)
          (hsPkgs.profunctors)
          (hsPkgs.pointed)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }