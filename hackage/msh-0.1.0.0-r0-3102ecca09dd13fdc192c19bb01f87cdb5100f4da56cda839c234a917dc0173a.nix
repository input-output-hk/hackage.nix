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
        name = "msh";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael.gale@cl.cam.ac.uk";
      author = "Michael B. Gale";
      homepage = "http://www.cl.cam.ac.uk/~mbg28/";
      url = "";
      synopsis = "Template Haskell implementation of Programming with Monadic State Hierarchies";
      description = "Library for object-oriented programming in Haskell";
      buildType = "Simple";
    };
    components = {
      "msh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.parsec)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
    };
  }