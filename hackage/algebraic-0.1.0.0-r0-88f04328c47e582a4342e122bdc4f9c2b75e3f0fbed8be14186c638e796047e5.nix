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
        name = "algebraic";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wojciech.danilo@gmail.com";
      author = "Wojciech Danilo";
      homepage = "";
      url = "";
      synopsis = "General linear algebra structures.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "algebraic" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }