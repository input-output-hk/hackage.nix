{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "matrix-market-pure";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/hs-matrix-market";
      url = "";
      synopsis = "Pure and composable reader and writer of the Matrix Market format.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "matrix-market-pure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }