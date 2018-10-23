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
        name = "passwords";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "maxim.kulkin@gmail.com";
      author = "Maxim Kulkin";
      homepage = "";
      url = "";
      synopsis = "Password generation/validation functions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "passwords" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
          (hsPkgs.containers)
        ];
      };
    };
  }