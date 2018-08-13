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
        name = "bearriver";
        version = "0.10.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez and Manuel Bärenz";
      homepage = "keera.co.uk";
      url = "";
      synopsis = "A replacement of Yampa based on Monadic Stream Functions.";
      description = "A Yampa replacement built using Dunai.";
      buildType = "Simple";
    };
    components = {
      "bearriver" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.dunai)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }