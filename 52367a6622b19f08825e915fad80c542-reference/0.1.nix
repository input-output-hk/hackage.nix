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
        name = "reference";
        version = "0.1";
      };
      license = "MIT";
      copyright = "2010 (c) Maciej Piechotka";
      maintainer = "uzytkownik2@gmail.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "A class for references in Haskell";
      description = "Reference is class which generalizes references and monads                      they exists in. It means that IORef, STRef and others can\nbe accessed by common interface.";
      buildType = "Simple";
    };
    components = {
      "reference" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }