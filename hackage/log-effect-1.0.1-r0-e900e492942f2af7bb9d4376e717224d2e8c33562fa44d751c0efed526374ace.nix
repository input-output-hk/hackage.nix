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
        name = "log-effect";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Lana Black <lanablack@amok.cc>";
      author = "Tobias Florek, Lana Black";
      homepage = "https://github.com/greydot/log-effect";
      url = "";
      synopsis = "An extensible log effect using extensible-effects";
      description = "Introduce two logging effects to your extensible effects arsenal";
      buildType = "Simple";
    };
    components = {
      "log-effect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.extensible-effects)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }