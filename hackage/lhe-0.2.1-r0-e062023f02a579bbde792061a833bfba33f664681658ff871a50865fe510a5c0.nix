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
        name = "lhe";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bytbox@gmail.com";
      author = "Scott Lawrence";
      homepage = "";
      url = "";
      synopsis = "Parser and writer for Les-Houches event files";
      description = "This package implements a parser and writer for the Les-Houches event file format as described in hep-ph/0609017";
      buildType = "Simple";
    };
    components = {
      "lhe" = {
        depends  = [
          (hsPkgs.haskell2010)
          (hsPkgs.HaXml)
        ];
      };
    };
  }