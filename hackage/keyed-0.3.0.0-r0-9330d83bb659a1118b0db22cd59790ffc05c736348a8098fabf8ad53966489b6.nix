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
      specVersion = "1.10";
      identifier = {
        name = "keyed";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "will.yager@gmail.com";
      author = "Will Yager";
      homepage = "https://github.com/wyager/keyed";
      url = "";
      synopsis = "Generic indexing for many data structures";
      description = "This library provides generic indexing for a number of data structures, so that we can overload (!) in the same way we overload length with Foldable or (f)map with Functor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
        ];
      };
    };
  }