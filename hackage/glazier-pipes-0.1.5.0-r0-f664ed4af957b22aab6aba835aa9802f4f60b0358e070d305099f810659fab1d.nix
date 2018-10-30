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
        name = "glazier-pipes";
        version = "0.1.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-pipes#readme";
      url = "";
      synopsis = "A threaded rendering framework using glaizer and pipes";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.glazier)
          (hsPkgs.mmorph)
          (hsPkgs.pipes)
          (hsPkgs.stm)
          (hsPkgs.stm-extras)
          (hsPkgs.transformers)
        ];
      };
    };
  }