{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "derivation-trees";
        version = "0.7.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Typeset Derivation Trees via MetaPost";
      description = "A library to typeset derivation trees via Laurent Mehats metapost package.\nAlso contains a module to ease the generation of trees for (coloured) pure type systems.";
      buildType = "Simple";
    };
    components = {
      "derivation-trees" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.applicative-extras)
        ];
      };
    };
  }