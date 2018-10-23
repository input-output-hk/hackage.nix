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
        name = "gore-and-ash-logging";
        version = "2.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-logging";
      url = "";
      synopsis = "Core module for gore-and-ash with logging utilities";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "gore-and-ash-logging" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.gore-and-ash)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.extra)
        ];
      };
    };
  }