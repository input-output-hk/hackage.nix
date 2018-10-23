{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "redis-simple";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://github.com/jaspervdj/redis-simple";
      url = "";
      synopsis = "Simple redis bindings for Haskell";
      description = "This package is meant to simplify usage of redis in\nHaskell. It is built on the full-blown @redis@ package\nand, in fact, does nothing more than providing an easier\ninterface to a small subset of it's functions.";
      buildType = "Simple";
    };
    components = {
      "redis-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.redis)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }