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
        name = "cve";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "github.com/chessai/cve.git";
      url = "";
      synopsis = "simple and efficient cve datatype";
      description = "This library provides a datatype 'Cve',\na representation 'Common Vulnerabilities\nand Exposures' (See https://cve.mitre.org/).\nEncode and Decode functions are provided\nfor textual representation.";
      buildType = "Simple";
    };
    components = {
      "cve" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
        ];
      };
    };
  }