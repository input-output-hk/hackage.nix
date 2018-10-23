{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "tagsoup-parsec";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "spoon@killersmurf.com";
      author = "Johnny Morrice";
      homepage = "http://www.killersmurf.com/projects/tagsoup-parsec";
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