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
        version = "3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@csee.ogi.edu";
      author = "Iavor S. Diatchki";
      homepage = "http://www.csee.ogi.edu/~diatchki/monadLib";
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