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
      specVersion = "1.8";
      identifier = {
        name = "syb";
        version = "0.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "generics@haskell.org";
      author = "Ralf Lammel, Simon Peyton Jones, Jose Pedro Magalhaes";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/SYB";
      url = "";
      synopsis = "Scrap Your Boilerplate";
      description = "This package contains the generics system described in the\n/Scrap Your Boilerplate/ papers (see\n<http://www.cs.uu.nl/wiki/GenericProgramming/SYB>).\nIt defines the @Data@ class of types permitting folding and unfolding\nof constructor applications, instances of this class for primitive\ntypes, and a variety of traversals.";
      buildType = "Simple";
    };
    components = {
      "syb" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }