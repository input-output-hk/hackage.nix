{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Semigroup";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Tony Morris";
      maintainer = "code@tmorris.net";
      author = "Tony Morris";
      homepage = "http://code.google.com/p/semigroup/";
      url = "";
      synopsis = "A semigroup";
      description = "A semigroup is a binary associative operation";
      buildType = "Simple";
    };
    components = {
      "Semigroup" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }