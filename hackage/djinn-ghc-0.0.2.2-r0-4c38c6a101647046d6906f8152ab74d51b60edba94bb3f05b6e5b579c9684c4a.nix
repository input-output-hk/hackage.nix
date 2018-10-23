{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "djinn-ghc";
        version = "0.0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Generate Haskell code from a type. Bridge from Djinn to GHC API.";
      description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.\nThis is the bridge from djinn-lib to GHC API.";
      buildType = "Simple";
    };
    components = {
      "djinn-ghc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.ghc)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.djinn-lib)
          (hsPkgs.async)
        ];
      };
    };
  }