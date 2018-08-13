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
        name = "json-togo";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-json-togo";
      url = "";
      synopsis = "Effectful parsing of JSON documents";
      description = "";
      buildType = "Simple";
    };
    components = {
      "json-togo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.scientific)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-trans)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }