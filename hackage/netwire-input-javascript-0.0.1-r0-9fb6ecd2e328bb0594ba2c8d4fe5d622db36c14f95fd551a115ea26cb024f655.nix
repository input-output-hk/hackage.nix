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
        name = "netwire-input-javascript";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/netwire-input-javascript";
      url = "";
      synopsis = "JavaScript instance of netwire-input";
      description = "GHCJS implementation of netwire-input.";
      buildType = "Simple";
    };
    components = {
      "netwire-input-javascript" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghcjs-base)
          (hsPkgs.transformers)
          (hsPkgs.netwire)
          (hsPkgs.netwire-input)
          (hsPkgs.containers)
        ];
      };
    };
  }