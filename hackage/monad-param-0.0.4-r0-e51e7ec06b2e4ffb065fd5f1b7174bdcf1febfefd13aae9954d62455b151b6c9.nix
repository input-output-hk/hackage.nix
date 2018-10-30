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
      specVersion = "0";
      identifier = {
        name = "monad-param";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006-2011, Edward Kmett, Dominique Devriese";
      maintainer = "Dominique Devriese <dominique.devriese@gmail.com>";
      author = "Edward Kmett <ekmett@gmail.com>";
      homepage = "http://hackage.haskell.org/package/monad-param";
      url = "http://hackage.haskell.org/package/monad-param";
      synopsis = "Parameterized monads";
      description = "Implements parameterized monads by overloading the monad sugar with more liberal types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.stm)
        ];
      };
    };
  }