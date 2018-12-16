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
      specVersion = "1.9.2";
      identifier = {
        name = "reflex";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "https://github.com/reflex-frp/reflex";
      url = "";
      synopsis = "Higher-order Functional Reactive Programming";
      description = "Reflex is a high-performance, deterministic, higher-order Functional Reactive Programming system";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-map)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.these)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }