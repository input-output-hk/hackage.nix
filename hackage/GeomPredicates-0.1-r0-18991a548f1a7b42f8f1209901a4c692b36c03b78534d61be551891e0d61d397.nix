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
      specVersion = "1.6";
      identifier = {
        name = "GeomPredicates";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "NHAlxr@gmail.com";
      author = "Neal Alexander";
      homepage = "";
      url = "";
      synopsis = "Geometric predicates";
      description = "Exact computation of common geometric predicates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }