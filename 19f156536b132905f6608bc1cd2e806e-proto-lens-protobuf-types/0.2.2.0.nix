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
        name = "proto-lens-protobuf-types";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens";
      url = "";
      synopsis = "Basic protocol buffer message types.";
      description = "This package provides bindings standard protocol message types,\nfor use with the proto-lens library.";
      buildType = "Custom";
    };
    components = {
      "proto-lens-protobuf-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens-family)
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-protoc)
          (hsPkgs.text)
        ];
      };
    };
  }