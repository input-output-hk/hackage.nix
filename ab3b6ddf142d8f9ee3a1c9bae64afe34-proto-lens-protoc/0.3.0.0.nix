{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      only-executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.21";
        identifier = {
          name = "proto-lens-protoc";
          version = "0.3.0.0";
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
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src-exts
            hsPkgs.lens-family
            hsPkgs.lens-labels
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.proto-lens
            hsPkgs.text
          ];
        };
        exes = {
          "proto-lens-protoc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default-class
              hsPkgs.deepseq
              hsPkgs.filepath
              hsPkgs.haskell-src-exts
              hsPkgs.lens-family
              hsPkgs.proto-lens
              hsPkgs.proto-lens-protoc
              hsPkgs.text
            ];
          };
        };
      };
    }