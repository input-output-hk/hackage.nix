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
        name = "gore-and-ash";
        version = "1.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha\n, 2016 Levon Oganyan\n, 2014-2016 Ertugrul Soeylemez";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha, Levon Oganyan";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash";
      url = "";
      synopsis = "Core of FRP game engine called Gore&Ash";
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
          (hsPkgs.hashable)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }