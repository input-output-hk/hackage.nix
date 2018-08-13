{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "polydata";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "Wrap together data and its constraints.";
      description = "This package allows one to pass data, particularly functions, together with a constraint which describes how\npolymorphic that data is. This constraint can then be used in a generic way to produce quite polymorphic functions,\nfor example, a \"map\" function that works on a pair of two different types,";
      buildType = "Simple";
    };
    components = {
      "polydata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.indextype)
          (hsPkgs.constraint-manip)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.indextype)
            (hsPkgs.constraint-manip)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }