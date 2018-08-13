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
      specVersion = "1.2";
      identifier = {
        name = "scan-vector-machine";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Megacz <megacz@cs.berkeley.edu>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Scan Vector Machine instruction set in Haskell";
      description = "An implementation of the Scan Vector Machine instruction set in Haskell";
      buildType = "Simple";
    };
    components = {
      "scan-vector-machine" = {};
    };
  }