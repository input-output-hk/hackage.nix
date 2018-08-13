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
      specVersion = "0";
      identifier = {
        name = "monadLib";
        version = "3.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Iavor S. Diatchki";
      homepage = "http://www.galois.com/~diatchki/monadLib";
      url = "";
      synopsis = "A collection of monad transformers.";
      description = "A collection of monad transformers.";
      buildType = "Custom";
    };
    components = {
      "monadLib" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }