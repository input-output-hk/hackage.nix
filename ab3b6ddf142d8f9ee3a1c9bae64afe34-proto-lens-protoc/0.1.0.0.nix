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
      specVersion = "1.21";
      identifier = {
        name = "proto-lens-protoc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "judahjacobson@google.com";
      author = "Judah Jacobson";
      homepage = "";
      url = "";
      synopsis = "Protocol buffer compiler for the proto-lens library.";
      description = "Turn protocol buffer files (.proto) into Haskell files (.hs) which\ncan be used with the proto-lens package.";
      buildType = "Simple";
    };
    components = {
      "proto-lens-protoc" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens-family)
          (hsPkgs.process)
          (hsPkgs.proto-lens)
          (hsPkgs.text)
        ];
      };
      exes = {
        "proto-lens-protoc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.lens-family)
            (hsPkgs.proto-lens)
            (hsPkgs.text)
          ];
        };
      };
    };
  }