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
        name = "explicit-determinant";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "waldmann@imn.htwk-leipzig.de";
      author = "Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-explicit-determinant";
      url = "";
      synopsis = "explicit computation of determinant of small matrices";
      description = "";
      buildType = "Simple";
    };
    components = {
      "explicit-determinant" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }