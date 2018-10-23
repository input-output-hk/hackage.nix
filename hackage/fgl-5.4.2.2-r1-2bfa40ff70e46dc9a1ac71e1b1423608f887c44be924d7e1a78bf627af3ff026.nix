{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "fgl";
        version = "5.4.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Martin Erwig";
      author = "Martin Erwig";
      homepage = "http://web.engr.oregonstate.edu/~erwig/fgl/haskell";
      url = "";
      synopsis = "Martin Erwig's Functional Graph Library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "fgl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }