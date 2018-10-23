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
        name = "gore-and-ash-glfw";
        version = "1.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-glfw";
      url = "";
      synopsis = "Core module for Gore&Ash engine for GLFW input events";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "gore-and-ash-glfw" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.GLFW-b)
          (hsPkgs.gore-and-ash)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }