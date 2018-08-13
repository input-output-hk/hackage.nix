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
        name = "functor-infix";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "vi@zalora.com";
      author = "vi";
      homepage = "https://github.com/fmap/functor-infix";
      url = "";
      synopsis = "Compositions of functors.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "functor-infix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }