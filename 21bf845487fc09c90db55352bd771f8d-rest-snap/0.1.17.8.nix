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
      specVersion = "1.8";
      identifier = {
        name = "rest-snap";
        version = "0.1.17.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Rest driver for Snap.";
      description = "Rest driver for Snap.";
      buildType = "Simple";
    };
    components = {
      "rest-snap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.snap-core)
          (hsPkgs.hxt)
          (hsPkgs.fclabels)
          (hsPkgs.json-schema)
          (hsPkgs.mtl)
          (hsPkgs.regular-xmlpickler)
          (hsPkgs.rest-types)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
          (hsPkgs.utf8-string)
          (hsPkgs.rest-core)
        ];
      };
    };
  }