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
        name = "refact";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Specify refactorings to perform with apply-refact";
      description = "This library provides a datatype which can be interpreted by apply-refact. It exists\nas a seperate library so that applications can specify refactorings without depending on GHC.";
      buildType = "Simple";
    };
    components = {
      "refact" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }