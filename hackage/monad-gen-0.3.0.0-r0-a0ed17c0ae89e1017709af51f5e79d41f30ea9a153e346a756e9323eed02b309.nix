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
        name = "monad-gen";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A simple monad for generating fresh integers";
      description = "This module provides a simple monad transformer @GenT@ to enumerate unique values within\na monadic computation. It also plays nicely with everything in the MTL.";
      buildType = "Simple";
    };
    components = {
      "monad-gen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }