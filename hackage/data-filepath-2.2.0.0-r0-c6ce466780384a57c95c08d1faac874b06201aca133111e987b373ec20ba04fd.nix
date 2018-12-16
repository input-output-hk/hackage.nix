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
        name = "data-filepath";
        version = "2.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "https://github.com/maxpow4h/data-filepath";
      url = "";
      synopsis = "A type safe file path data structure";
      description = "A type safe file path data structure";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }