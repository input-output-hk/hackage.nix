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
      specVersion = "1.6";
      identifier = {
        name = "persistent-protobuf";
        version = "0.1.2";
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
      "library" = {
        depends = [
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