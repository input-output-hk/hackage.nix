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
      specVersion = "1.6";
      identifier = {
        name = "monad-ran";
        version = "0.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2009";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "";
      url = "";
      synopsis = "Fast implementations of monads and monad transformers using right Kan extensions";
      description = "Fast implementations of monads and monad transformers using right Kan extensions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }