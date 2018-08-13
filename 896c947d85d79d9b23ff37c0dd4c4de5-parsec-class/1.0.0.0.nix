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
        name = "parsec-class";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons";
      homepage = "https://github.com/peti/parsec-class";
      url = "";
      synopsis = "Class of types that can be constructed from their text representation";
      description = "This library provides the type class 'HasParser' as a dual to 'Pretty'.\nInstances of this class provide a parser than can be used to construct the\ntype from its text representation.";
      buildType = "Simple";
    };
    components = {
      "parsec-class" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }