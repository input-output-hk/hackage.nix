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
      specVersion = "1.4";
      identifier = {
        name = "iteratee-parsec";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "uzytkownik2@gmail.com";
      author = "John Lato,\nMaciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "Package allowing parsec parser initeratee";
      description = "Package providing instances of Stream in\nIterateeG monad.";
      buildType = "Simple";
    };
    components = {
      "iteratee-parsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.iteratee)
          (hsPkgs.ListLike)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
      };
    };
  }