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
        name = "monopati";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/monopati";
      url = "";
      synopsis = "Well-typed paths";
      description = "Despite the fact that there are a plenty of various well-typed \"path\" libraries in Haskell, I decided to write new one that I would like to use.";
      buildType = "Simple";
    };
    components = {
      "monopati" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.split)
        ];
      };
    };
  }