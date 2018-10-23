{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nanoparsec";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011  Maciej Piechotka";
      maintainer = "uzytkownik2@gmail.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "An implementation of attoparsec-like parser around list-like";
      description = "An implementation of attoparsec-like parser around list-like";
      buildType = "Simple";
    };
    components = {
      "nanoparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ListLike)
        ];
      };
    };
  }