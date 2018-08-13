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
        name = "persistent-protobuf";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 Akamai Technologies, Inc.";
      maintainer = "mistone@akamai.com";
      author = "Michael Stone";
      homepage = "https://github.com/mstone/persistent-protobuf";
      url = "";
      synopsis = "Template-Haskell helpers for integrating protobufs with persistent.";
      description = "Template-Haskell helpers for integrating protobufs with persistent.";
      buildType = "Simple";
    };
    components = {
      "persistent-protobuf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.persistent)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
    };
  }