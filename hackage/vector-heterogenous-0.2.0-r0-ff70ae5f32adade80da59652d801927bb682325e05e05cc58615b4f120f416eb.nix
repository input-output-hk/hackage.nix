{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "vector-heterogenous";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/vector-heterogenous/";
      url = "";
      synopsis = "A type-safe library for vectors whose elements can be of any type, or any type satisfying some constraints";
      description = "";
      buildType = "Simple";
    };
    components = {
      "vector-heterogenous" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
    };
  }