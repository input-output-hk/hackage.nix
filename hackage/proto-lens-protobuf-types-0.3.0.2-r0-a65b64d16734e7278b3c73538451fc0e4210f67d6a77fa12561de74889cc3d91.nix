{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "proto-lens-protobuf-types";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Basic protocol buffer message types.";
      description = "This package provides bindings standard protocol message types, for use with the proto-lens library.";
      buildType = "Custom";
    };
    components = {
      "proto-lens-protobuf-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens-labels)
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-protoc)
          (hsPkgs.text)
        ];
      };
    };
  }