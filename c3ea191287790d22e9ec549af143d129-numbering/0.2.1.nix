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
      specVersion = "1.6";
      identifier = {
        name = "numbering";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Daniel Schüssler";
      maintainer = "Daniel Schüssler";
      author = "Daniel Schüssler";
      homepage = "https://github.com/DanielSchuessler/numbering";
      url = "";
      synopsis = "Combinators for creating bijections from some type to the natural numbers.";
      description = "Combinators for creating bijections from a subset of an arbitrary type to a range of 'Int's,\n, e.g. for using libraries that require 'Int' IDs.";
      buildType = "Simple";
    };
    components = {
      "numbering" = {
        depends  = [
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.base)
        ];
      };
    };
  }