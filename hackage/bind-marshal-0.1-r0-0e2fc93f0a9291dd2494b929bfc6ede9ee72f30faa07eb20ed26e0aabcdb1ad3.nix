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
        name = "bind-marshal";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
      author = "Corey O'Connor <coreyoconnor@gmail.com>";
      homepage = "https://github.com/coreyoconnor/bind-marshal";
      url = "";
      synopsis = "Data marshaling library that uses type level equations to optimize buffering.";
      description = "A (in development) high performance data marshaling layer for haskell. Uses a\npair of parameterized monads to represent: Data marshalling actions with\nstatic buffering requirements (EG: Needs no more than 100 bytes available to\nsucceed) ; Data marshalling actions that are a dynamic composition of actions\nwith static buffering requirements.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.type-level-tf)
          (hsPkgs.ghc-prim)
          (hsPkgs.strict)
          (hsPkgs.bytestring)
          (hsPkgs.stm)
        ];
      };
    };
  }