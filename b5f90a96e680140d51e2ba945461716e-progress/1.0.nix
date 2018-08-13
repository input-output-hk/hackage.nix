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
      specVersion = "1.6";
      identifier = {
        name = "progress";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 marius a. eriksen";
      maintainer = "marius a. eriksen";
      author = "marius a. eriksen";
      homepage = "";
      url = "";
      synopsis = "Simple progress tracking & projection library";
      description = "Given a some \"units of work\" and points in time,\nwe (linearly) project the time until completion\nand also keep track of progress made thus far.";
      buildType = "Simple";
    };
    components = {
      "progress" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
    };
  }