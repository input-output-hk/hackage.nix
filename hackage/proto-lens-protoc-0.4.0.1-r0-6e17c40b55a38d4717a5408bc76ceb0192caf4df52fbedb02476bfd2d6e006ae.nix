{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "proto-lens-protoc";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Protocol buffer compiler for the proto-lens library.";
      description = "Turn protocol buffer files (.proto) into Haskell files (.hs) which can be used with the proto-lens package.\nThe library component of this package contains compiler code (namely Data.ProtoLens.Compiler.*) is not guaranteed to have stable APIs.'";
      buildType = "Simple";
    };
    components = {
      "proto-lens-protoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.lens-family)
          (hsPkgs.pretty)
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
            (hsPkgs.lens-family)
            (hsPkgs.proto-lens)
            (hsPkgs.proto-lens-protoc)
            (hsPkgs.text)
          ];
        };
      };
    };
  }