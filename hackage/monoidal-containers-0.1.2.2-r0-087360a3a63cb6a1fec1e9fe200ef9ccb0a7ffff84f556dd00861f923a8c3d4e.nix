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
        name = "monoidal-containers";
        version = "0.1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/monoidal-containers";
      url = "";
      synopsis = "Containers with monoidal accumulation";
      description = "Containers with monoidal accumulation";
      buildType = "Simple";
    };
    components = {
      "monoidal-containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.newtype)
        ];
      };
    };
  }