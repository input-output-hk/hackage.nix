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
      specVersion = "1.8";
      identifier = {
        name = "lens-family-th";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Dan Burton 2012";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "http://github.com/DanBurton/lens-family-th";
      url = "";
      synopsis = "Template Haskell to generate lenses for\nlens-family and lens-family-core";
      description = "Due to a cabal/hackage defect, curly braces cannot be\nadequately displayed here. Please see\n<http://github.com/DanBurton/lens-family-th#readme>\nfor a proper description.\n\n(See <https://github.com/haskell/cabal/issues/968>\nfor the ticket I created regarding the defect.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }