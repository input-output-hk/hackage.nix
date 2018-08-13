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
        name = "fgl";
        version = "5.4.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com, tomberek@gmail.com";
      author = "Martin Erwig, Ivan Lazar Miljenovic";
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