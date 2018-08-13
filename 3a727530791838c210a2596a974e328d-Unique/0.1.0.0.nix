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
        name = "Unique";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ualinuxcn@gmail.com";
      author = "Volodymyr Yaschenko";
      homepage = "";
      url = "";
      synopsis = "Provides with the functionality like unix \"uniq\" utility";
      description = "Module provides with functions to find unique and duplicate elements in the list";
      buildType = "Simple";
    };
    components = {
      "Unique" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }