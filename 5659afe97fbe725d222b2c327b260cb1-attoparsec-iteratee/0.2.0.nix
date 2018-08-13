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
        name = "attoparsec-iteratee";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregorycollins.net";
      author = "Gregory Collins";
      homepage = "http://github.com/gregorycollins";
      url = "";
      synopsis = "An adapter to convert attoparsec Parsers into blazing-fast Iteratees";
      description = "An adapter to convert attoparsec Parsers into blazing-fast Iteratees";
      buildType = "Simple";
    };
    components = {
      "attoparsec-iteratee" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.iteratee)
          (hsPkgs.monads-fd)
          (hsPkgs.transformers)
        ];
      };
    };
  }