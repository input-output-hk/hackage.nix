{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monad-products";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/monad-products";
      url = "";
      synopsis = "Haskell 98 monad products";
      description = "Haskell 98 monad products";
      buildType = "Simple";
    };
    components = {
      "monad-products" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }