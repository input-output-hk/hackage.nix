{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Condor";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/Condor";
      url = "";
      synopsis = "Information retrieval library";
      description = "Library for indexing and searching text documents";
      buildType = "Simple";
    };
    components = {
      "Condor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "condor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }