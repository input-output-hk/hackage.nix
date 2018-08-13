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
        name = "unsafe-promises";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acurtis@spsu.edu";
      author = "Adam Curtis";
      homepage = "https://github.com/kallisti-dev/unsafe-promises";
      url = "";
      synopsis = "Create pure futures using lazy IO.";
      description = "An experimental library for creating promises that can be\nevaluated in pure code.";
      buildType = "Simple";
    };
    components = {
      "unsafe-promises" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.threads)
        ];
      };
    };
  }