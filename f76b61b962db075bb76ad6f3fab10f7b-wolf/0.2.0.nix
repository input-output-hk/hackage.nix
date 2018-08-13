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
        name = "wolf";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/wolf";
      url = "";
      synopsis = "Amazon Simple Workflow Service Wrapper.";
      description = "Wolf is a wrapper around Amazon Simple Workflow Service.";
      buildType = "Simple";
    };
    components = {
      "wolf" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-swf)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.optparse-applicative)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "wolf-register" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.wolf)
            (hsPkgs.yaml)
          ];
        };
        "wolf-execute" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.wolf)
            (hsPkgs.yaml)
          ];
        };
        "wolf-decide" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.wolf)
            (hsPkgs.yaml)
          ];
        };
        "wolf-act" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka-core)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shelly)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wolf)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }