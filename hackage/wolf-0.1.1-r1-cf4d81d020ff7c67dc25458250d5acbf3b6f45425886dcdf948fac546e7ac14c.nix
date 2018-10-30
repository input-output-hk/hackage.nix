{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wolf";
        version = "0.1.1";
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
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-swf)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.mtl-compat)
          (hsPkgs.optparse-applicative)
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
            (hsPkgs.wolf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
        "wolf-execute" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wolf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
        "wolf-decide" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wolf)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
        "wolf-act" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wolf)
            (hsPkgs.bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }