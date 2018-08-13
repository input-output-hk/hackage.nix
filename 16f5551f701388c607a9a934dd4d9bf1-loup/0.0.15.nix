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
      specVersion = "1.22";
      identifier = {
        name = "loup";
        version = "0.0.15";
      };
      license = "MIT";
      copyright = "Copyright (C) 2017 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/loup";
      url = "";
      synopsis = "Amazon Simple Workflow Service Wrapper for Work Pools.";
      description = "Loup is a wrapper around Amazon Simple Workflow Service for Work Pools.";
      buildType = "Simple";
    };
    components = {
      "loup" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-swf)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.preamble)
          (hsPkgs.time)
          (hsPkgs.turtle)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "loup-actor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.loup)
            (hsPkgs.optparse-generic)
          ];
        };
        "loup-decider" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.loup)
            (hsPkgs.optparse-generic)
          ];
        };
        "loup-converger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.loup)
            (hsPkgs.optparse-generic)
          ];
        };
        "shake-loup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shakers)
          ];
        };
      };
    };
  }