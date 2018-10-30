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
      specVersion = "1.10";
      identifier = {
        name = "gore-and-ash-sdl";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "git@github.com:Teaspot-Studio/gore-and-ash-sdl.git";
      url = "";
      synopsis = "Gore&Ash core module for integration with SDL library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.gore-and-ash)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.sdl2)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }