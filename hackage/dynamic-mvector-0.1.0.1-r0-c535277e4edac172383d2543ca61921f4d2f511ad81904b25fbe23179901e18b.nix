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
        name = "dynamic-mvector";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "puttamalac@gmail.com";
      author = "AndrasKovacs";
      homepage = "https://github.com/AndrasKovacs/dynamic-mvector";
      url = "";
      synopsis = "A wrapper around MVector that enables pushing, popping and extending.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
      };
    };
  }