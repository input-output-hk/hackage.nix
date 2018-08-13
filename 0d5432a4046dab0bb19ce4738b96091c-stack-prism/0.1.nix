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
      specVersion = "1.6";
      identifier = {
        name = "stack-prism";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2014 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen, Sjoerd Visscher";
      homepage = "https://github.com/MedeaMelana/stack-prism";
      url = "";
      synopsis = "Stack prisms";
      description = "Haskell lens prisms that use stack types";
      buildType = "Simple";
    };
    components = {
      "stack-prism" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }