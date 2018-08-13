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
        name = "attoparsec-expr";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Silk <code@silk.co>";
      author = "Daan Leijen, Paolo Martini";
      homepage = "";
      url = "";
      synopsis = "Port of parsec's expression parser to attoparsec.";
      description = "Port of parsec's expression parser to attoparsec.";
      buildType = "Simple";
    };
    components = {
      "attoparsec-expr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }