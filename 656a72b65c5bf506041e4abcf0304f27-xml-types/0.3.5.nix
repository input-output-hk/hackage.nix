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
      specVersion = "1.6";
      identifier = {
        name = "xml-types";
        version = "0.3.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-xml/";
      url = "";
      synopsis = "Basic types for representing XML";
      description = "";
      buildType = "Simple";
    };
    components = {
      "xml-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ];
      };
    };
  }