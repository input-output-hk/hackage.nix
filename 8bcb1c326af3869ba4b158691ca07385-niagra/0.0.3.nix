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
        name = "niagra";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nate@symer.io";
      author = "Nathaniel Symer";
      homepage = "";
      url = "";
      synopsis = "CSS EDSL for Haskell";
      description = "CSS EDSL for Haskell";
      buildType = "Simple";
    };
    components = {
      "niagra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
    };
  }