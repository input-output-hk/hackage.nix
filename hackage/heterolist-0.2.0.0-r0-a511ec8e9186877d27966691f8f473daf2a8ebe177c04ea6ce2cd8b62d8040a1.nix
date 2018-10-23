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
        name = "heterolist";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "A heterogeneous list type";
      description = "A heterogeneous list type (i.e. a list with different element types) which knows the type of it's elements.\nThere are also various functions for manipulating such lists, although this is not yet complete.\nSome of the standard type classes, like Eq, Ord and Show are defined for these heterogeneous lists.\nI suspect it could be particularly useful for testing libraries which may want to test against a variety of\ntypes in a uniform fashion.";
      buildType = "Simple";
    };
    components = {
      "heterolist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.indextype)
          (hsPkgs.constraint-manip)
          (hsPkgs.polydata)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.indextype)
            (hsPkgs.constraint-manip)
            (hsPkgs.polydata)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }