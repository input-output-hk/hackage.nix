{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "tagsoup-parsec";
        version = "0.0.8";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tagsoup)
          (hsPkgs.parsec)
        ];
      };
    };
  }