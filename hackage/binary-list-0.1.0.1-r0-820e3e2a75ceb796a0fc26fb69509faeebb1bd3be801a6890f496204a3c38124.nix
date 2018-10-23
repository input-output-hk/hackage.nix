{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "binary-list";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Lists of size length a power of two.";
      description = "Some algorithmic problems work only when the input list\nhas length a power of two. This library provides with a\ndata structure optimized for this.";
      buildType = "Simple";
    };
    components = {
      "binary-list" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }