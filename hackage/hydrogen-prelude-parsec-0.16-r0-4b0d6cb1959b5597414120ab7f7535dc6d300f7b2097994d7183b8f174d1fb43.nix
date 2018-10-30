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
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-prelude-parsec";
        version = "0.16";
      };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "http://scravy.de/hydrogen-prelude-parsec/";
      url = "";
      synopsis = "Hydrogen Prelude /w Parsec";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hydrogen-prelude)
          (hsPkgs.parsec)
        ];
      };
    };
  }