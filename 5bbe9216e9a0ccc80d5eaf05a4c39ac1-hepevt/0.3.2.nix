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
        name = "hepevt";
        version = "0.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bytbox@gmail.com";
      author = "Scott Lawrence";
      homepage = "";
      url = "";
      synopsis = "HEPEVT parser and writer";
      description = "This package implements a parser and writer for the ASCII HEPEVT event log file format";
      buildType = "Simple";
    };
    components = {
      "hepevt" = {
        depends  = [
          (hsPkgs.haskell2010)
          (hsPkgs.bytestring)
        ];
      };
    };
  }