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
      specVersion = "1.2.0";
      identifier = {
        name = "tagsoup-parsec";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "spoon@killersmurf.com";
      author = "Johnny Morrice";
      homepage = "http://www.killersmurf.com";
      url = "";
      synopsis = "Tokenizes Tag, so [ Tag ] can be used as parser input.";
      description = "Tokenizes Tag, so [ Tag ] can be used as parser input.  Provides\nbasic combinators.";
      buildType = "Simple";
    };
    components = {
      "tagsoup-parsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagsoup)
          (hsPkgs.parsec)
        ];
      };
    };
  }