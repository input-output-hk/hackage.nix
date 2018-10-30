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
      specVersion = "1.6";
      identifier = {
        name = "Dangerous";
        version = "0.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nate@natesoares.com";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Monads for operations that can exit early and produce warnings";
      description = "Dangerous monads result in (Either Exit a, [Warning]), where\nExit can denote either ending computation early (Stop) or\nthe computation failing (Exit, Failure). Monads, Monad\nTransformers, and helper functions are included.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }