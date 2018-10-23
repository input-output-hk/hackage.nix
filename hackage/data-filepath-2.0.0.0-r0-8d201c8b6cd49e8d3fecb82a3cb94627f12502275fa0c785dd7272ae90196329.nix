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
        name = "data-filepath";
        version = "2.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "";
      url = "";
      synopsis = "A type safe file path data structure";
      description = "";
      buildType = "Simple";
    };
    components = {
      "data-filepath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }