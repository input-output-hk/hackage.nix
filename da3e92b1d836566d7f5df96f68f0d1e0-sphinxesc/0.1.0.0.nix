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
        name = "sphinxesc";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Mackey RMS";
      author = "Daniel Choi";
      homepage = "https://github.com/mackeyrms/sphinxesc#readme";
      url = "";
      synopsis = "Transform queries for sphinx input";
      description = "Transform queries for sphinx input";
      buildType = "Simple";
    };
    components = {
      "sphinxesc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "sphinxesc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.sphinxesc)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }