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
        name = "pipes-vector";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "";
      url = "";
      synopsis = "Various proxies for streaming data into and out of vectors";
      description = "Proxies for streaming data into and out of vectors.";
      buildType = "Simple";
    };
    components = {
      "pipes-vector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
          (hsPkgs.pipes)
          (hsPkgs.vector)
        ];
      };
    };
  }