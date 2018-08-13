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
        name = "engine-io-snap";
        version = "1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/engine.io";
      url = "";
      synopsis = "";
      description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://snapframework.com Snap>.";
      buildType = "Simple";
    };
    components = {
      "engine-io-snap" = {
        depends  = [
          (hsPkgs.io-streams)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.engine-io)
          (hsPkgs.lifted-base)
          (hsPkgs.snap-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.websockets)
          (hsPkgs.websockets-snap)
        ];
      };
    };
  }