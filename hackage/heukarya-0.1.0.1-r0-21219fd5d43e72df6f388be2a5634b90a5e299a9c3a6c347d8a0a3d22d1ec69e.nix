{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "heukarya";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "depot051@gmail.com";
      author = "He-chien Tsai";
      homepage = "https://github.com/t3476/heukarya";
      url = "";
      synopsis = "A genetic programming based on tree structure.";
      description = "It based on Data.Dynamic and tree container, so that Gene can represent both haskell functions and syntax trees by type connstructors. since it also supports higher order functions by multiple way type parsing, there's no need to have any variable in Gene's Tree structure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.text)
        ];
      };
    };
  }