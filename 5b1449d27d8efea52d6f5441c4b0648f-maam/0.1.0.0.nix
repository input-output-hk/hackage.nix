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
      specVersion = "1.10";
      identifier = {
        name = "maam";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david.darais@gmail.com";
      author = "David Darais";
      homepage = "";
      url = "";
      synopsis = "A monadic framework for abstract interpretation.";
      description = "An implementation of Galois Transformers, a monadic framework for abstract interpretation.";
      buildType = "Simple";
    };
    components = {
      "maam" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "maam" = {
          depends  = [ (hsPkgs.maam) ];
        };
      };
    };
  }