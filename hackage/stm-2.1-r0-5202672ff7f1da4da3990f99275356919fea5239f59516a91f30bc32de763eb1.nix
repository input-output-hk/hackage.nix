{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "stm";
        version = "2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Software Transactional Memory";
      description = "A modular composable concurrency abstraction.";
      buildType = "Custom";
    };
    components = {
      "stm" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }